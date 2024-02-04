FROM debian:buster

# Base
RUN apt-get update
RUN apt-get -y install curl openjdk-11-jre gnupg python3 python3-pip unzip

# Jenkins
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | tee /usr/share/keyrings/jenkins-keyring.asc
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list
RUN apt-get update
RUN apt-get -y install jenkins

# Terraform adjust for the ARCH
RUN curl -L -o /usr/bin/terraform.zip https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_arm64.zip
RUN unzip /usr/bin/terraform.zip -d /usr/bin/
RUN chmod +x /usr/bin/terraform
RUN rm /usr/bin/terraform.zip

# OPA (if the arch becomes arm64 than move the exec after the container is built) adjust for the ARCH
RUN curl -L -o /usr/bin/opa https://github.com/open-policy-agent/opa/releases/download/v0.58.0/opa_linux_arm64_static
RUN chmod +x /usr/bin/opa

EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "/usr/share/java/jenkins.war"]