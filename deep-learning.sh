# script to install basic developer environment in mac & ubuntu.

#! /bin/sh

x=`uname`
if [ "$x" == "Darwin" ]
then 
    echo "Installing all the necessary softwares"
    echo "Downloading Anaconda"
    curl https://repo.continuum.io/archive/Anaconda2-5.2.0-MacOSX-x86_64.sh -o ~/anaconda.sh
    bash ~/anaconda.sh -b -p $HOME/anaconda
    export PATH="$HOME/anaconda/bin:$PATH"
    source $HOME/anaconda/bin/activate

    conda create -n deep-learning python=3.6 anaconda
    source activate deep-learning
    conda install -c anaconda scipy
    conda install nb_conda   
elif [ "$x" == "Linux" ]
then
    echo "Installing all the necessary softwares for Linux"
    echo "Downloading Anaconda"
    wget http://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh -O anaconda.sh
    chmod +x anaconda.sh
    ./anaconda.sh
    source ~/.bashrc
    
    conda create -n deep-learning python=3.6 anaconda
    source activate deep-learning
    conda install -c anaconda scipy
    conda install nb_conda
else []
    echo "This script supports only Linux (Ubuntu) & MAC"
fi
