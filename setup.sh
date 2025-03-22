if command -v brew >/dev/null 2>&1; then
  echo "brew found"
else
  echo "install homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if command -v ansible >/dev/null 2>&1; then
  echo "ansible found"
else
  echo "install ansible"
  brew install ansible
fi

echo "run ansible"
ansible-playbook -i hosts localhost.yml -v
