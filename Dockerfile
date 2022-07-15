FROM ubuntu:22.04

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

# Build Tools
RUN apt-get update
RUN apt-get install -y gcc g++ make ninja-build cmake
RUN apt-get install -y gdb python3-pip
RUN pip install conan

# Complete
RUN apt-get clean
