Install Ansible and configure on Ubuntu 20.04
---
    sudo apt update
    sudo apt updgrade -y

    sudo apt install -y software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt update
    
    sudo apt install -y ansible
    ansible --version

Setup SSH keys and share it among managed nodes
---
    # Generate SSH Public & Private Key
    ssh-keygen

Add managed host entries in /etc/hosts file on control node
---
    #/etc/hosts
    192.168.0.240  terraform
    192.168.0.242   devops
    192.168.0.245   redash

 Copy SSH Public Key to make password less SSH
---

    ssh-copy-id terraform
    ssh-copy-id devops
    ssh-copy-id redash