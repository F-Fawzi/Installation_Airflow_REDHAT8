#You will need wget, tar, gzip,`` gcc``, make, and expect to get the upgrade process working.
yum -y install wget tar gzip gcc make expect

sudo wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz 

#Then, extract the archive file on your system 
sudo tar xzf Python-3.10.5.tgz 

#Change directory  
cd Python-3.10.5  

sudo ./configure --with-system-ffi --with-computed-gotos  
sudo ./configure --enable-optimizations 

#Next, compile the source code with make. Here nproc will provide the number of CPU cores available on system. So that make can perform well. 
sudo make -j ${nproc}  
#(nproc is a simple Unix command which is used to print the number of processing units available in the system or to the current process.) 

sudo make altinstall 
#(make altinstall is used to prevent replacing the default python binary file /usr/bin/python.) 
