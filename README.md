\# ☁️ Cloud Security Lab (AWS Free Tier)



This project demonstrates how to secure a basic AWS cloud environment using free-tier services. It's designed as a hands-on learning lab for cloud security concepts like IAM, EC2 hardening, logging, and threat detection — all with no cost.



---



\## 🔐 What This Project Covers



\- Secure EC2 Instance (Amazon Linux 2)

\- Least Privilege IAM Roles \& Policies

\- Network Security: VPC, Security Groups, NACLs

\- Logging with AWS CloudTrail \& CloudWatch

\- Threat Detection with AWS GuardDuty (Free 30-day trial)



---



\## 🛠️ Tools \& Services Used



| Type            | Tool / Service                     |

|-----------------|-------------------------------------|

| Cloud Platform  | AWS Free Tier                       |

| OS              | Amazon Linux 2                      |

| Logging         | CloudTrail, CloudWatch              |

| Detection       | GuardDuty                           |

| Access Control  | IAM, Security Groups, NACLs         |

| CLI Tools       | AWS CLI, Git                        |

| Scripts         | Bash (EC2 hardening)                |

| Documentation   | Markdown, GitHub                    |



---



\## 🧱 Project Structure
cloud-security-lab/

├── README.md

├── hardening-scripts/

│   ├── update\_ec2.sh

│   └── disable\_root\_login.sh

├── screenshots/

│   ├── iam-policy.png

│   ├── guardduty-findings.png

│   └── security-groups.png

---



\## 📸 Screenshots



\- IAM policy in AWS Console

\- GuardDuty findings

\- Security Group configurations

\- EC2 login logs from CloudWatch



---



\## 🚀 How to Recreate This Lab



1\. Sign up for \[AWS Free Tier](https://aws.amazon.com/free)

2\. Launch EC2 instance with Amazon Linux 2

3\. Harden instance (update packages, disable root login)

4\. Set up IAM policies with least privilege

5\. Configure CloudTrail and CloudWatch logging

6\. Enable GuardDuty and simulate findings



---



\## 🧠 What I Learned



\- IAM best practices are critical to securing AWS

\- A single misconfigured security group can expose your whole instance

\- Logging and detection are essential to visibility and response

\- AWS offers powerful tools for free if you know how to use them



---



\## 📎 Related



\- \[GuardDuty Test Events](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty\_test.html)

\- \[CloudTrail Docs](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)

\- \[AWS IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)



---



\## 📬 Connect



Made by \[@aminkhazri](https://github.com/aminkhazri)  

Feel free to fork, use, or reach out with questions or suggestions!



