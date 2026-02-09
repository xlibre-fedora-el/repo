# XLibre for Fedora and Enterprise Linux

This repo contains both source code and instructions on how to install XLibre packages on Fedora, CentOS Stream and Enterprise Linux distributions (RHEL, AlmaLinux, Rocky Linux, Oracle Linux etc.)

# Installation instructions

**FEDORA WORKSTATION AND CENTOS STREAM**
> *sudo dnf copr enable @xlibre/xlibre-xserver*

> *sudo dnf install xlibre-xserver xlibre-xf86-input-libinput*

**ENTERPRISE LINUX 10**

**Important: Don't use the "dnf copr enable"-command. This will enable the EPEL repo, which is built using CentOS+EPEL. This can sometimes create incompatibilities on EL distributions due to newer package versions.**

**Use the commands below to activate the RHEL+EPEL repo:**

> *sudo wget https://copr.fedorainfracloud.org/coprs/g/xlibre/xlibre-xserver/repo/rhel+epel-10/group_xlibre-xlibre-xserver-rhel+epel-10.repo -O /etc/yum.repos.d/xlibre-xserver-rhel+epel-10.repo*

> *sudo dnf install xlibre-xserver xlibre-xf86-input-libinput*

**ALMALINUX 10 x86_64-v2**

> *sudo wget https://copr.fedorainfracloud.org/coprs/g/xlibre/xlibre-xserver/repo/alma+epel-10/group_xlibre-xlibre-xserver-alma+epel-10.repo -O /etc/yum.repos.d/xlibre-xserver-alma+epel-10.repo*

> *sudo dnf install xlibre-xserver xlibre-xf86-input-libinput*