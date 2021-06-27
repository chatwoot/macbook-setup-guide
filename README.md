# Mac setup guide

This guide enlists common steps to set up your macbook for the day to day local development.


- [Install Homebrew package manager](#install-homebrew-package-manager)
- [Install Apps](#install-apps)
- [Configuring Git](#configuring-git)
- [Installing Ruby](#installing-ruby)
  - [Installing rbenv](#installing-rbenv)
  - [Installing a Ruby version using rbenv](#installing-a-ruby-version-using-rbenv)
  - [Useful rbenv commands](#useful-rbenv-commands)
- [Installing Node](#installing-node)
    - [Installing nvm](#installing-nvm)
    - [Install a node version using nvm](#install-a-node-version-using-nvm)
    - [Useful nvm commands](#useful-nvm-commands)
- [Customizing terminal prompt](#customizing-terminal-prompt)
- [Generating a new SSH key](#generating-a-new-ssh-key)

## Setting up macOS

### Install Homebrew package manager

Run following command in terminal

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
Make sure everything is up to date.
```bash
brew update
```

**NOTE:** DO NOT use Homebrew to install `node` or `ruby` package.

### Install Apps

- [Tree](https://www.sourcetreeapp.com/)

- [iTerm2](https://iterm2.com/)

- [Brew services menubar](https://github.com/andrewn/brew-services-menubar)

- [VSCode](https://code.visualstudio.com/download)

- [Git Fork](https://git-fork.com/)

- [Ohmyz](https://ohmyz.sh/)

- [Postgres.app](https://postgresapp.com/)
    
- [Postico](https://eggerapps.at/postico/)

- [Itsycal](https://github.com/sfsam/Itsycal)

- [Pandan](https://apps.apple.com/app/id1569600264)
    

### Installing Node

We recommend to use [nvm](https://github.com/nvm-sh/nvm) to install Node.js. This allows you to easily switch between Node versions, which is essential.

#### Installing nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

#### Install a latest node version

```bash
nvm install node
```

#### Install a specific node version using nvm

To install, say node 8.14.0, run

```bash
nvm install 8.14.0
```

#### Useful nvm commands

If you want to see what node versions are installed

```bash
nvm ls
```

To use a different node version, say 12.6.0 as the default node version everywhere

```bash
nvm alias default 12.6.0
```

To use a different node version for the current directory

```bash
nvm use 10.16.0
```

#### Update nvm
For later, here's how to update nvm.

```bash
nvm install node --reinstall-packages-from=node
```


### Configuring Git

The first thing you should do with Git is set your [global configuration](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

```bash
touch ~/.gitconfig
```
Input your config and create some aliases

```bash
[alias]
  a      = add
  ca     = commit -a
  cam    = commit -am
  cm     = commit -m
  s      = status
  p      = push
  pom    = push origin master
  puom   = pull origin master
  cob    = checkout -b
  co     = checkout
  fp     = fetch --prune --all
  l      = log --oneline --decorate --graph
  lall   = log --oneline --decorate --graph --all
  ls     = log --oneline --decorate --graph --stat
  lt     = log --graph --decorate --pretty=format:'%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset'
```
With the above aliases, I can run `git a` instead of `git add`, for example. The less I have to type, the happier I am.

Configure your name and email to help Git to set the author of the commits you will add onwards.

```bash
git config --global user.name "Your Name Here" # e.g. John Doe
git config --global user.email "your.email@bigbinary.com"
```


### Installing Ruby

We recommend to use [rbenv](https://github.com/rbenv/rbenv) to manage versions of Ruby.

#### Installing rbenv

```bash
brew install rbenv
```

Ensure that rbenv is installed successfully by checking whether the `rbenv -v` command prints rbenv version or not.
If not installed, install it using `brew install rbenv` command.

Set up rbenv in your shell.

```bash
rbenv init
```
#### Installing a Ruby version using rbenv

To install, say Ruby 2.5.3, run

```bash
rbenv install 2.5.3
```

#### Useful rbenv commands

To check the current Ruby version

```bash
rbenv version
```

To list all installed Ruby versions

```bash
rbenv versions
```

To set a different Ruby version for the current directory

```bash
rbenv local 1.9.3-p327
```

### Installing Node

We recommend to use [nvm](https://github.com/nvm-sh/nvm) to manage versions of Node.

#### Installing nvm

Follow the installation instructions [here](https://github.com/nvm-sh/nvm#install--update-script)

#### Install a node version using nvm

To install, say node 8.14.0, run

```bash
nvm install 8.14.0
```

The first node version installed becomes the default. New shells will start with the default version of node.

#### Useful nvm commands

If you want to see what node versions are installed

```bash
nvm ls
```

To use a different node version, say 12.6.0 as the default node version everywhere

```bash
nvm alias default 12.6.0
```

To use a different node version for the current directory

```bash
nvm use 10.16.0
```

### Customizing terminal prompt

A default bash terminal prompt looks like this

<img width="408" alt="default-prompt" src="https://user-images.githubusercontent.com/876195/63692949-7517f300-c830-11e9-81d2-7a7b34d2b35c.png">

To display some more information such as the current working directory's path, current git branch and whether the git directory is clean or not, please append the following to your `~/..zshrc` script.

```bash
export PS1='\w\[\033[33m\]$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/")\[\033[00m\]$([[ -n $(git status -s 2> /dev/null) ]] && echo "\033[0;31m*\033[0m") $ '
```

Then run `source ~/..zshrc` command.

This will turn your bash prompt to look like this now

<img width="927" alt="customized-prompt" src="https://user-images.githubusercontent.com/876195/63692950-75b08980-c830-11e9-8ece-c37f09b36965.png">

### Generating a new SSH key


```bash
ssh-keygen -t rsa
```

This will create a new public, private key pair which you can use to get ssh access to services like github, aws ect.

To see your public key

```bash
cat ~/.ssh/id_rsa.pub
```




1. [Setting up a Mac for Development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/?ck_subscriber_id=360218762)
2. [Setup Macbook M1 for Web and React Native development](https://amanhimself.dev/blog/setup-macbook-m1/)
