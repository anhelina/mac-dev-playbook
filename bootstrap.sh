#!/bin/zsh

set -e;

# Install Ansible
export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH";
sudo pip3 install --upgrade pip;
pip3 install ansible;

# Install Ansible roles
ansible-galaxy install -r requirements.yml;

# Run playbook
echo "$1 profile is setting up..."
ansible-playbook main.yml --extra-vars="profile=$1" --ask-become-pass;