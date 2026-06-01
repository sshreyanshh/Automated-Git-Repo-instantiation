# Automated Git Repository Instantiation

A robust automation shell script designed to streamline your development workflow. It takes a local directory and a desired repository name, verifies your GitHub authentication status, creates a brand-new repository directly on GitHub, and initializes it with an automated `README.md` before pushing it online.

---

## Features

* **Authentication Check::** Automatically verifies if your GitHub CLI (`gh`) is authenticated.
* **Smart Prompting:** Seamlessly guides you through the GitHub login process if no active session is found.
* **Hands-free Setup:** Creates the remote GitHub repository, initializes local git, commits a generated `README.md`, and pushes everything in one go.

---

## Prerequisites

Before running the script, ensure you have the following installed on your system:

* **Git:** [Download & Install Git](https://git-scm.com/)
* **GitHub CLI (`gh`):** The script relies on GitHub's official command-line tool to handle repo creation. 
  * *Mac:* `brew install gh`
  * *Linux:* `sudo apt install gh`
  * *Windows:* `winget install GitHub.cli`

---

## Clone the Repository
``` bash
git clone https://github.com/sshreyanshh/Automated-Git-Repo-instantiation.git
cd Automated-Git-Repo-instantiation
```
you're good to go ;)
