DevOps Bootcamp - AWS Portfolio Deployment Project
This project was developed as part of the AytiTech DevOps Bootcamp. The main objective was to deploy a portfolio website on a local Linux environment, integrate AWS services such as EBS and network interfaces, and automate the deployment process using scripting and scheduling tools.

Project Scope
The project includes the following stages:

1. Setting Up a Ready-Made Portfolio Website
A pre-built portfolio site named onepage was cloned from GitHub.

The website was served on a local Linux machine.

2. AWS Infrastructure Configuration
An additional EBS (Elastic Block Store) volume was attached to the EC2 instance.

A new network interface was created and assigned a static IP.

Route tables were configured to allow proper access.

3. Disk Formatting and Mounting
The newly created EBS volume was formatted and partitioned.

It was mounted to the /var/www/html path using a systemd unit file for persistent mounting.

4. Automation Script
A Bash script was written to perform the following:

Clone the onepage repository into the /tmp directory:

Since /tmp is cleared on reboot, the script checks if the folder exists. If it doesn’t, git clone is executed.

Pull the latest updates from the remote repository using git pull.

Modify the index.html file:

Replace "ISIM" with the actual name.

Replace "EPOSTA" with the actual email address.

Copy all contents of the onepage folder to /var/www/html, overwriting any existing files with the same name.

5. Automation with Crontab
The script was scheduled to run at regular intervals using crontab.

6. Version Control with Git
A new branch was created to update the website’s background image.

The changes were pushed to GitHub.

A pull request was opened and merged into the main branch after review.

Issues and GitHub workflow features were used for task tracking.

7. Web Server Setup
Apache (httpd) was installed and configured.

The portfolio page was accessed via the local machine’s IP address.

Technologies Used
Git & GitHub

Linux (Bash, Crontab, Systemd)

Apache HTTP Server

AWS EC2, EBS, Network Interface

HTML/CSS Customization

