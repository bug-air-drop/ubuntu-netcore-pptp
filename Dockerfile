FROM ubuntu:18.04

RUN sed -e 's/archive./ba.archive./' /etc/apt/sources.list -i

RUN apt-get update 
RUN apt-get install -y pptp-linux binutils curl net-tools
RUN wget https://download.visualstudio.microsoft.com/download/pr/b81a2bd3-a8a4-4c7e-bd69-030f412ff7b4/3fc5f2c0481313daf2e18c348362ff3f/dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz -C $HOME/dotnet
RUN export DOTNET_ROOT=$HOME/dotnet
RUN export PATH=$PATH:$HOME/dotnet
