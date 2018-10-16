sudo dpkg --purge cuda-repo-ubuntu1404
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install -y cuda-9.0

file="cudnn-9.0-linux-x64-v7.3.1.20.tgz"
wget https://github.com/yihui-he/install-cuda9-cudnn7-nccl/releases/download/tar/$file
tar -xzvf $file
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
rm $file

#dpkg -i nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo dpkg -i nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt update
sudo apt install -y --allow-downgrades libnccl2=2.3.5-2+cuda9.0 libnccl-dev=2.3.5-2+cuda9.0
#sudo apt install libnccl2 libnccl-dev
