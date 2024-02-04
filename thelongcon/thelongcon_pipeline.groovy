pipeline {
    agent any
    stages {
        stage('Pull from VCS') {
            steps {
                echo 'git pull https://github.com/oleyv/tda.git'
            }
        }
        stage('Prepare the Environment') {
            steps {
                sh '''
                cd /opt/opa_demo/
                python3 -m pip install -r ./thelongcon/requirements.txt
                '''
            }
        }
        stage('Architecture into the terraform') {
            steps {
                echo '''
workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application" {
                user -> this "Uses"
            }
            container "Database" {
                webapp -> this "Reads from and writes to"
            }
        }
    }

    views {
        systemContext softwareSystem {
            include *
            autolayout lr
        }

        container softwareSystem {
            include *
            autolayout lr
        }

        theme default
    }

}
                '''
                sh 'cat /opt/opa_demo/thelongcon/main.tfplan.json'
            }
        }
        stage('Convert Gherkin into Rego') {
            steps {
                sh '''
                cd /opt/opa_demo/thelongcon/
                head -n 20 gherkin_to_rego.py
                '''
                sh 'python3 /opt/opa_demo/thelongcon/gherkin_to_rego.py'
            }
        }
        stage('Evaluate with OPA aka Go no Go') {
            steps {
                sh '''
                cd /opt/opa_demo/thelongcon/
                opa test test_ok.rego -v
                '''
            }
        }
        stage('Deploy when Go') {
            steps {
                echo 'terraform apply'
            }
        }
    }
}