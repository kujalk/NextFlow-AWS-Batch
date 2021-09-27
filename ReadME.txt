Developer - K.Janarthanan
Purpose - Running Nextflow script in AWS Batch. Here Nextflow task (Master) and Nextflow Jobs both runs in AWS Batch

----------------------------------------------
Create an AMI with following specification
----------------------------------------------
[1]Use ECS optimized image to lauch an EC2
[2]Install the following package

sudo yum install -y bzip2 wget
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -f -p $HOME/miniconda
$HOME/miniconda/bin/conda install -c conda-forge -y awscli
rm Miniconda3-latest-Linux-x86_64.sh

[3]Create AMI from it

---------------
Docker Build
---------------

cd Docker/Nextflow (Modify the image nextflow.tf as per the need)
docker build -t nextflow .  

cd Docker/Worker
docker build -t worker .  


Invoke-Expression -Command (Get-ECRLoginCommand).Command

docker tag nextflow <ecr repo url>
docker tag worker <ecr repo url>

docker push <ecr repo url>
docker push <ecr repo url>