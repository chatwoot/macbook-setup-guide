# Mac setup guide

This guide enlists common steps to set up your macbook for the day to day local development.

- [Enable Rosetta for Terminal on M1 Mac](#enable-rosetta-for-terminal-on-m1-mac)
- [Install Homebrew package manager](#install-homebrew-package-manager)
- [Make ZSH as default shell](#make-zsh-as-default-shell)
- [Install Apps and Developer tools](#install-apps-and-developer-tools)
- [Installing Node](#installing-node)
    - [Installing nvm](#installing-nvm)
    - [Install a specific node version using nvm](#install-a-specific-node-version-using-nvm)
    - [Useful nvm commands](#useful-nvm-commands)
- [Installing Postgres](#installing-postgres)
- [Installing Redis](#installing-redis)
- [Configuring Git](#configuring-git)
- [Installing Ruby](#installing-ruby)
  - [Installing rbenv](#installing-rbenv)
  - [Installing a Ruby version using rbenv](#installing-a-ruby-version-using-rbenv)
  - [Useful rbenv commands](#useful-rbenv-commands)
- [Installing yarn](#installing-yarn)

## Setting up macOS

### Enable Rosetta for Terminal on M1 Mac

Rosetta 2 is the lifeline that allows you to run apps designed for Intel-based chips that use x86 architecture on ARM-based chips (in this case M1). This solution is provided by Apple in form of an emulator and doesn't come pre-installed. You have to install it manually. Fire up the Terminal application that comes pre-installed on the Big Sur and let your first command to execute be:

```bash
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```
### Install Homebrew package manager

Run following command in terminal

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Then create `.zshrc` on home directory (If it was not created yet). Just run on terminal:
```bash
touch .zshrc
```

Then open it to edit with TextEdit (Is a hidden file. You can show hidden files with shift + command + . )

Add this line at the end of .zshrc
```bash
export PATH=/opt/homebrew/bin:$PATH
```

Run this command in terminal to make this available:
```bash
source ~/.zshrc
```

Now just run this command to be sure that everything is working:
```bash
brew help
```


Make sure everything is up to date.
```bash
brew update
```

**NOTE:** DO NOT use Homebrew to install `node` or `ruby` package.

### Install [iterm2](https://iterm2.com/)

```bash
brew install --cask iterm2
```

### Make ZSH as default shell
Before going forward, please make sure `zsh` is your default terminal shell.

You can run `echo $SHELL` to see what's the current shell.

If it's not your default shell, then set it up manually:

```bash
chsh -s $(which zsh)
```

### Install [oh-my-zsh](https://ohmyz.sh/)


```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
### Install VS Code

```bash
brew install --cask visual-studio-code
```

### Install Apps and Developer tools

- [Tree](https://www.sourcetreeapp.com/)- Git IDE

- [Brew services menubar](https://github.com/andrewn/brew-services-menubar)- Read the `homebrew services` command, showing you the status of your services and allowing them to be started, stopped and restarted.
    
- [Postico](https://eggerapps.at/postico/) - Postgres IDE

- [Itsycal](https://github.com/sfsam/Itsycal) - Tiny calendar for macbook menu bar

- [Pandan](https://apps.apple.com/app/id1569600264) - Time awareness in your menubar

- [Notion](https://www.notion.so/desktop)- Note taking tool

- [Code Copy](https://github.com/zenorocha/codecopy)- Copy to clipboard buttons for code snippet in websites

- [Enhanced Github](https://github.com/softvar/enhanced-github)- Show github repo display file size, download & copy link

- [OctoLinker](https://github.com/OctoLinker/OctoLinker)- OctoLinker is a browser extension for GitHub, that turns language-specific statements like include require or import into links


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

The installation procedure created a user account called postgres that is associated with the default Postgres role. In order to use Postgres, you can log into that account.

```bash
sudo -u postgres psql
```


### Installing Redis

```bash
 brew install redis
 brew services start redis
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
git config --global user.email "your.email@chatwoot.com"
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

If you are using zsh shell then use the following command:
```bash
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
```

Add `~/.rbenv/bin` to your `$PATH` for accessing the rbenv command-line utility.

If you are using zsh shell then use the following command:

```bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
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

Now install bundler which help us manage Ruby gems:
```bash
gem install bundler
```

### Installing yarn

Install it:
```bash
brew install yarn
```

### References

- [Setting up a Mac for Development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/?ck_subscriber_id=360218762)
- [Setup Macbook M1 for Web and React Native development](https://amanhimself.dev/blog/setup-macbook-m1/)
