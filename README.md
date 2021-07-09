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
    
- [Postico](https://eggerapps.at/postico/)

- [Itsycal](https://github.com/sfsam/Itsycal)

- [Pandan](https://apps.apple.com/app/id1569600264)

- [Notion](https://www.notion.so/desktop)
    

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


### Installing Postgres

```bash
 brew install postgresql
 brew services start postgresql
```

### Installing Redis

```bash
 brew install redis
 brew services start redis
```

### Installing Redis

```bash
 brew install postgresql
 brew services start postgresql
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


1. [Setting up a Mac for Development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/?ck_subscriber_id=360218762)
2. [Setup Macbook M1 for Web and React Native development](https://amanhimself.dev/blog/setup-macbook-m1/)
