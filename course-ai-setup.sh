# Step 1: Update System and Install Required Dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3.10-venv python3-pip python3-dev build-essential libssl-dev libffi-dev

# Step 2: Create and Activate Virtual Environment
mkdir ai_professor
cd ai_professor
python3 -m venv venv
source venv/bin/activate

# Step 3: Install Required Packages
pip install farm-haystack[all]
pip install fastapi uvicorn python-multipart pandas pptx2pdf PyPDF2 python-docx

# Step 4: Install Elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.9-linux-x86_64.tar.gz
tar -xzf elasticsearch-7.17.9-linux-x86_64.tar.gz
cd elasticsearch-7.17.9/
./bin/elasticsearch -d  # Run as daemon

# Step 5: Wait for Elasticsearch to start (usually takes about 30 seconds)
sleep 30