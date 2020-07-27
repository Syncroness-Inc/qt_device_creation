# Base environment provided by the yocto project
# See https://github.com/crops/poky-container
FROM crops/poky:ubuntu-18.04

# Set this value to the machine you want to target
ENV MACHINE apalis-imx6

# installing dependencies for QT
USER root
RUN apt-get update

RUN apt-get install -y \
    curl=7.58.0-2ubuntu3.9 \
    repo=1.12.37-3ubuntu1 \
    git-lfs=2.3.4-1

# Setting permissions back to a normal user
USER usersetup
