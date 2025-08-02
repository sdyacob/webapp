# CI/CD Pipeline for a Python Web App with Docker and GitHub Actions

![CI/CD Pipeline Status](https://github.com/sdyacob/webapp/actions/workflows/main.yml/badge.svg)

This project demonstrates a complete, end-to-end Continuous Integration and Continuous Deployment (CI/CD) pipeline. The workflow automatically builds, packages, and deploys a simple Python Flask web application into a Docker container every time a change is pushed to the `main` branch.

## 🚀 Key Features

* **Fully Automated:** The entire process from `git push` to a running application is automated using GitHub Actions.
* **Containerized:** The application is packaged into a portable and isolated environment using Docker.
* **Local Deployment:** Utilizes a self-hosted runner to deploy the application directly within a local WSL (Windows Subsystem for Linux) environment.
* **Real-World Troubleshooting:** The project's journey involved overcoming several real-world challenges, showcasing adaptability and problem-solving skills.

## 🛠️ Tech Stack

* **Version Control:** Git & GitHub
* **CI/CD:** GitHub Actions
* **Containerization:** Docker
* **Application:** Python (Flask)
* **Environment:** WSL2 (Ubuntu)

## 🏛️ Project Architecture

The workflow is triggered by a `git push` to the `main` branch. GitHub Actions then assigns a job to a self-hosted runner configured within a local WSL environment. The runner executes the following steps:
1.  Checks out the latest source code.
2.  Builds a new Docker image based on the `Dockerfile`.
3.  Stops and removes the old running container (if it exists).
4.  Starts a new container from the newly built image, making the updated application available on `localhost`.

## ⚙️ Setup and Installation

To replicate this project, you will need the following prerequisites installed on your machine:
* Git
* WSL2 with an Ubuntu distribution
* Docker Desktop with WSL2 integration enabled

**Installation Steps:**

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/sdyacob/webapp.git](https://github.com/sdyacob/webapp.git)
    cd webapp
    ```
2.  **Prepare the WSL Environment:**
    Ensure Docker is running correctly within your WSL distribution. You may need to start the Docker service:
    ```bash
    sudo systemctl start docker
    ```

3.  **Configure the GitHub Self-Hosted Runner:**
    * Navigate to your forked repository's settings: `Settings > Actions > Runners`.
    * Click "New self-hosted runner" and follow the official GitHub instructions to download, configure, and run the agent inside your project directory within WSL.
    * Start the runner: `./run.sh`

4.  **Trigger the Pipeline:**
    Once the runner is "Listening for jobs...", make a change to the code and push it to the `main` branch to trigger the first pipeline run.
    ```bash
    git push origin main
    ```

## 💻 Usage

After a successful pipeline run, the web application will be running inside a Docker container on your local machine.

* Open your web browser and navigate to: **`http://localhost:8080`**
* You should see the "Hello, DevOps World!" message.
