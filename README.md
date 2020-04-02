# setup

## preparation
### install homebrew
[link](https://brew.sh)
### install ansible
```
brew install ansible
```
### setup ssh
do something
### clone setup repository
```
git clone git@github.com:sakihet/setup.git
```

## setup by ansible
```
ansible-playbook -i hosts localhost.yml

# options
ansible-playbook -i hosts localhost.yml --skip-tags "cask"
ansible-playbook -i hosts localhost.yml --tags "osx_defaults"
```

## set symbolic link

TODO

## change default shell
```
sudo vim /etc/shells
chsh -s /usr/local/bin/zsh
```
