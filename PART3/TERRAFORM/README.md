\# Flask \& Express Deployment on AWS using Terraform, Docker \& ECS





&nbsp;Deployment Steps



\### Part 1 – EC2 Based Deployment

\- Launched EC2 instances using Terraform

\- Deployed Flask and Express applications

\- Verified access via public IPs



---



\### Part 2 – Multi-Service Deployment

\- Created separate EC2 instances for Flask and Express

\- Configured Security Groups

\- Validated application connectivity



---



\### Part 3 – Docker + ECS + ALB Deployment



\#### Step 1: Create ECR Repositories

```bash

terraform apply



Step 2: Build Docker Images

docker build -t flask-app .

docker build -t express-app .



Step 3: Login to ECR

aws ecr get-login-password --region ap-south-1 | \\

docker login --username AWS --password-stdin <account-id>.dkr.ecr.ap-south-1.amazonaws.com



Step 4: Tag \& Push Images



docker tag flask-app <flask-ecr-url>

docker push <flask-ecr-url>



docker tag express-app <express-ecr-url>

docker push <express-ecr-url>



Step 5: Deploy ECS Services

terraform apply



Access URLs



ALB DNS Name:

http://part3-alb-1346522890.ap-south-1.elb.amazonaws.com







