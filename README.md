# EverFlowTechExercise1

# 1. Project Overview
<p>This project involves setting up a continuous delivery (CD) pipeline for an ASP.NET Core application (aspnetapp) using Azure DevOps, Terraform for Infrastructure as Code (IaC), Helm for Kubernetes deployments, and Bash scripts for validation and testing.</p>

# 2. Prioritisation
<p>A prioritisation technique was used to decide on the importance of tasks:</p> 

<p>The Essential aspect of the project.</p>
<ul>
<li> Set up Infrastructure as Code (Terraform). </li>
<li> Create a coded pipeline in Azure DevOps. </li>
<li> Implement pre- and post-deployment validations. </li>
<li> Automation </li>
</ul>
<p> The Important but not critical: </p>
<ul>
<li> Ensure security best practices are followed.</li>
<li> Implement SonarQube for code quality analysis.</li>
<li> Provide comprehensive documentation.</li>
</ul>
<p> The Desirable but not necessary:</p>
<ul>
<li> Implement performance testing as part of post-deployment validation.</li>
<li> Set up disaster recovery (DR) and business continuity planning (BCP) documentation.</li>
</ul>
<p> The Not included in the current scope:</p>
<ul>
<li>	Implement advanced security features like encryption in transit, not included in the initial scope due to time constraints.</li>
</ul>
# 3. Infrastructure Setup
<p> Infrastructure as Code (IaC) in this project is implemented using Terraform to automate and manage Azure resources, including AKS for Kubernetes and ACR for Docker images. This approach ensures consistency, scalability, and reproducibility across environments. Terraform scripts are version-controlled, enabling easy tracking and rollbacks. The Integration with Azure DevOps automates the infrastructure setup as part of the CI/CD pipeline, enhancing security and efficiency of the project. </p>

# 4. Pipeline Overview
<p> a. The pipeline is divided into three stages:</p>
<p> Build and Test: </p>
<p>Builds the application.</p>
<p>Runs unit tests, code coverage, linting, and SonarQube analysis. </p>
<p>Builds and pushes the Docker image to the Azure Container Registry (ACR).</p>

<p> b.	Deploy to Test Environment: </p>
<ul>
<li>Uses Helm to deploy the application to the test environment in Kubernetes.</li>
<li>Runs smoke tests and integration tests to validate the deployment.</li>
</ul>

<p>c.	Deploy to Production Environment:</p>
<ul>
<li>Uses Helm to deploy the application to the production environment in Kubernetes.</li>
<li>Runs smoke tests and performance tests for post-deployment validation.</li>
</ul>

# 5. Scripts Used

<p>The following scripts are integral to the pipeline:</p>
<ul>
  <li>Linting (./scripts/lint.sh): Ensures the code follows proper formatting and standards.</li>
<li>Smoke Tests (./scripts/run-smoke-tests.sh): Verifies that the application is responsive, and the basic functionalities work after deployment.</li>
<li>Integration Tests (./scripts/run-integration-tests.sh): Ensures that the application components interact correctly after deployment.</li>
<li>Performance Tests (./scripts/run-performance-tests.sh): Assesses the application’s performance under load.</li>

# 6. Security Best Practices
<ul>
<li>Infrastructure as Code: All infrastructure is defined using Terraform, allowing for version control and traceability.</li>
Environment Variables: Sensitive data like credentials are stored securely and accessed using Azure Key Vault.
SonarQube: Static code analysis ensures the code adheres to security and quality standards.
Helm: Securely deploys applications to Kubernetes, ensuring that only the correct images and configurations are used.
</ul>

# 7. Disaster Recovery (DR) and Business Continuity Planning (BCP)
Future Improvements:
DR Strategy: Implement a backup and restore strategy for the Azure Kubernetes Service (AKS) and Azure Container Registry (ACR). This could involve creating scheduled backups of application data and configurations.
BCP Documentation: Develop a comprehensive plan that outlines the steps to recover from various types of failures, ensuring minimal downtime. This should include automated failover processes and regular DR drills.

# 8. Notes
Pipeline YAML: The provided YAML pipeline is flexible, allowing for easy updates by modifying variables and scripts.
Flexibility: Variables are used extensively to ensure the pipeline can be reused across different environments with minimal changes.
Security Considerations: Future improvements could include enhancing security by implementing encryption and more robust access controls.
Time Constraints: If more time were available, additional features like automated rollback on failure, enhanced performance testing, and detailed BCP documentation would be implemented.

# 9. Future Work
If more time were available, the following improvements would be considered:
•	Implementing encryption in transit and at rest, along with more granular access controls.
•	Integrating tools like Prometheus and Grafana for real-time monitoring and alerting.
•	Setting up automatic rollback mechanisms in case of deployment failures.
•	Developing a full-scale business continuity plan, including detailed disaster recovery procedures and automated DR drills.

