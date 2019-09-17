FROM ubuntu:18.04

RUN sed -e 's/archive./ba.archive./' /etc/apt/sources.list -i

RUN sudo apt-get update 
RUN sudo apt-get install -y pptp-linux binutils curl net-tools
RUN wget https://download.visualstudio.microsoft.com/download/pr/498b8b41-7626-435e-bea8-878c39ccbbf3/c8df08e881d1bcf9a49a9ff5367090cc/dotnet-sdk-3.0.100-preview9-014004-linux-x64.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz -C $HOME/dotnet
RUN export DOTNET_ROOT=$HOME/dotnet
RUN export PATH=$PATH:$HOME/dotnet
