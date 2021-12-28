Install Ansible
---
[Install on Ubuntu 20.04](./install.md)

To check your inventory
---
    ansible-inventory --list -y

Test Ansible Configuration
---
    # ansible <INVENTORY> -m ping -u <USER>

    ansible -i inventory.yml -m ping -u terraform terraform 
    ansible -i inventory.yml -m ping -u devops devops

Running Ad-Hoc Commands
---
    ansible all -a "df -h" -u devops

Run Ansible Playbook
---
    ansible-playbook -i inventory.yml  nginx.yml --extra-vars "node_group=terraform" --ask-become-pass