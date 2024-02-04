# Introduction

I am sharing my thoughts on how to improve the security of solutions delivery leveraging a Test-Driven Architecture (TDA). I believe that by codifying security requirements and creating a robust framework for their delivery, we can ensure that security guardrails are consistently implemented and automatically delivered in all IT solutions. Currently, I am purposefully limiting the scope to the security requirements. However, I am anticipating and planning to advance this approach to fit all aspects of solutions delivery operational requirements.

# Problem

One of the biggest challenges in security is ensuring that security requirements are properly defined and fulfilled. Most of the time the security requirements are driven by compliance and the best industry practices and if they are implemented as intended a significant risk reduction can be achieved. However, in my experience, security requirements are usually overlooked, inconsistently delivered, implemented incorrectly, and are often tailored out in the interest of delivery time pressure. This leads to security vulnerabilities that can be exploited, regulatory fines, and ultimately to a lose of business.

# Solution

Based on my experience and industry trends, I believe that the best approach to address this challenge is to develope and maintain repository of codified security requirements backed up by robust and automated framework for their delivery/testing using already existing tools. This will ensure that security requirements are available in a human readable and machine executable definitions so that participants in charge of their collection can easily identify and lock the appropriate requirements for a solution. A selection, adaptation, enforcement, and continues visibility of the requirements is implemented in the proposed framework. I strongly believe in re-use of the existing technologies and/or creation of API integrations with the existing tools and providing ultimate orchestration of all the moving parts to achieve a continues end to end (ouroboros why) requirements definition and verification.

# Benefits

There are numerous benefits to codifying security operational requirements in a public repository that aligned with best industry practices (i.e. NIST SP 800-53, NIST CSF, CIS Benchmarks, NSA Security Configuration Guides, DoD STIGs) and creating a robust framework for their delivery. These include:

* Consistent and efficient security requirements inclusion and delivery by ensuring that security requirements are always included and that there is a process supported by technology in place to ensure their continues delivery.
* Proactive risks reduction that shifts from detection first to prevention first mindset.
* Speed to market, breadth and depth of the proposed security requirements coverage by meaningfully engaging the community to enable all of the participants to contribute to the project.
* Continues visibility in the security solution health by repeatable validation of the built as requested principle that can enable any audit activities for delivered solution by this approach as a walk in a park.
* Costs reduction by limiting the risk of exposing a vulnerable configurations from the first seconds of the solution lifecycle.

# Vision

Imagine a world where non-technical people can easily capture a solution requirements in a structured and testable way. Imagine a world where there is a repository of security requirements that can be reused. Imagine a world where there are mandatory security requirements that are always applicable and accounted for. Imagine a world where most of these requirements can be converted into  solution specifications that are adhered to throughout the delivery process and eventually become the basis for unit, integration, and end-to-end tests for applications and infrastructure alike. This vision would provide a consistent way to deliver desired requirements in various environments and organizations.

This vision is not just limited to security. It can be applied to other areas as well. By codifying requirements and creating a robust framework for their delivery, we can improve the quality and consistency of our solutions across multiple industries, verticals, and you name it.

# Vision Realization

Test-driven architecture (TDA) is a methodology that can help to achieve this vision. TDA involves defining the structure and behavior of a solution through a series of human readable and automatically testable requirements. The idea behind TDA is to use tests as a means of guiding the architecture, design, delivery processes, and continues evaluation of the delivered solution.

The first step in implementing TDA is to collect and document requirements using a language that is understandable by both technical and non-technical people, moreover the language that can be easily ported/adopted by the machines, particularly by Infrastructure as Code (IaC) and Policy as Code (PaC) delivery tools and platforms. In another words, once the requirements are collected, they can be converted into testable units. These units can then be used to drive the architecture, design, and delivery of the solution.

TDA is not a silver bullet. It requires a significant investment of time and effort to implement. At the same time, the benefits of TDA can be significant. By using TDA, we can improve the quality, consistency, and security of our products and services. Also, we can address significant time investment via community support. If 100 folks in the community, devote 2 hours we are all benefited from 200 hours of innovations and are much closer to the fully functional and easily adoptable TDA.

Here are a few very high level building blocks that I will be expanding and providing examples as we go.
1. Gherkin - the way to document requirements and store them in git.
2. Low code requirements collection and management tool - looking for or writing our own to help non technical folks (mostly) to collect, refactor and manage the requirements
3. Converter from Gherkin to OPA policies - use already existing policy engine and integrations to IaC, PaC tools integration.
4. OPA hooked to terraform, ansible, etc. to run the tests and orchestration via CI/CD hooks.
5. Reporting

# Conclusion

TDA is a powerful methodology that can be used to improve the quality, consistency, and security of solutions.

I believe that codifying security operational requirements and creating a robust framework for their delivery is the best way to improve the security of solutions delivery.

As a community we can deliver this solution effectively. Let's start small and focus on the security requirements generation in Gherkin format based on the already existing frameworks and adopting the testability of the requirements for the solutions that we have already encountered. Meanwhile, I'll (with your help if provided) start putting together the framework, tooling and orchestration.

# Call to Action

If you are interested in learning more about the idea, contributing to codifying security operational requirements and create a robust framework for their delivery, I encourage you to work with this project. I would be happy to discuss this further with you.