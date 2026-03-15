#!/bin/bash

if command -v ansible >/dev/null 2>&1; then
  echo "ansible found"
else
  echo "install ansible"
  brew install ansible
fi

echo "run ansible"
ansible-playbook -i hosts localhost.yml -v
