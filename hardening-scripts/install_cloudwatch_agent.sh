#!/bin/bash

# EC2 CloudWatch Agent Installation & Configuration

echo "[+] Installing CloudWatch Agent..."

# Download and install the CloudWatch Agent
sudo yum install -y amazon-cloudwatch-agent

echo "[+] Creating CloudWatch Agent config file..."

# Create a basic CloudWatch Agent configuration for logs
cat <<EOF | sudo tee /opt/aws/amazon-cloudwatch-agent/bin/config.json
{
  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/var/log/messages",
            "log_group_name": "ec2-cloudwatch-logs",
            "log_stream_name": "{instance_id}/messages",
            "timestamp_format": "%b %d %H:%M:%S"
          }
        ]
      }
    }
  }
}
EOF

echo "[+] Starting the CloudWatch Agent..."

# Start the agent using the custom config
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config \
  -m ec2 \
  -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json \
  -s

echo "[✓] CloudWatch logging enabled and streaming logs to AWS."
