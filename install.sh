sudo dpkg --purge cuda-repo-ubuntu1404
sudo dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

sudo tar -xvf cudnn-9.2-linux-x64-v7.2.1.38.tar
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

dpkg -i nccl-repo-ubuntu1604-2.2.13-ga-cuda8.0_1-1_amd64.deb 
sudo dpkg -i nccl-repo-ubuntu1604-2.2.13-ga-cuda8.0_1-1_amd64.deb 
sudo apt update
sudo apt install libnccl2 libnccl-dev
