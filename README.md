## Provisioning a Local Docker Container using Terraform

<img width="1024" height="1536" alt="image" src="https://github.com/user-attachments/assets/8973ae1c-8d08-4030-844c-c60970c87554" />

**1. Install Docker Desktop on Windows**

Ensure Docker is running and accessible via PowerShell.

**2. Install Terraform**

- Download Terraform for Windows from the official website
 or use Chocolatey.

- Add Terraform to the system PATH and verify installation by running terraform -version.

**3. Prepare Project Directory**

Create a folder for Terraform files.

Add the following files:

- main.tf — Terraform configuration for the Docker image and container.

- Dockerfile — Defines your custom local Docker image.

- index.html — Example web page to serve in the Nginx container.

**4. Pre-build Docker Image**

Build the Docker image locally using Docker Desktop.

Verify that the image exists and runs successfully.

**5. Initialize Terraform**

Run terraform init to download the required provider plugins.

<img width="1920" height="1080" alt="Screenshot (13)" src="https://github.com/user-attachments/assets/f749ddbf-8885-4219-a509-7ceb7f933857" />

**6. Create Execution Plan**

Run terraform plan to generate a plan of the resources to be created.

Save the plan to a file for controlled application.

**7. Apply Terraform Plan**

Run terraform apply using the saved plan.

Terraform will create the Docker container from the pre-built image.

<img width="1920" height="1080" alt="Screenshot (14)" src="https://github.com/user-attachments/assets/7898fddf-b0c0-4649-b8fc-6f3aa6bf8c1e" />


**8. Verify Container**

Check running Docker containers using docker ps.

Open the browser at the exposed port (e.g., http://localhost:8081) to confirm that Nginx is serving the page.

<img width="1920" height="1080" alt="Screenshot (15)" src="https://github.com/user-attachments/assets/e5653694-eb3f-422a-8ec0-95553ba67822" />

**9. Destroy Infrastructure (Cleanup)**

Run terraform destroy to remove the container and clean up the state.

Confirm that all Docker resources are removed.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/0a0744ac-d2a5-4ad6-9c99-5403b7fe0643" />
