[Start from here](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/?ck_subscriber_id=360218762)

# Laptop

This guide enlists common steps to set up your laptop for the day to day local development.

- [Laptop](#laptop)
  - [Setting up macOS](#setting-up-macos)
    - [Installing Homebrew package manager](#installing-homebrew-package-manager)
    - [Installing essential utilities/tools using Homebrew](#installing-essential-utilitiestools-using-homebrew)
    - [Installing common desktop applications](#installing-common-desktop-applications)
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

### Installing Homebrew package manager

1. Run the following command to install Homebrew.

    ```bash
    curl -fsS 'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
    ```

2. Append `export PATH="/usr/local/bin:$PATH"` to the `~/.bashrc` file.
3. Run `source ~/.bashrc` command.
4. Ensure that `brew --version` command prints the Homebrew version. If you can see the version, it means that Homebrew is successfully installed.

### Installing essential utilities/tools using Homebrew

Run following commands to install essential utilities using Homebrew.

```bash
brew update
brew install vim # text editor
brew install git
brew install openssl
brew install coreutils
brew install tree
brew install hub # https://github.com/github/hub
brew install wget
brew install imagemagick
brew install yarn # Alternative to npm
brew install python3
brew install the_silver_searcher
brew install libyaml
brew install redis # https://gist.github.com/tomysmile/1b8a321e7c58499ef9f9441b2faa0aa8
```

**NOTE:** DO NOT use Homebrew to install `node` or `ruby` package.

### Installing common desktop applications

1. iTerm2 (alternative to the `Terminal` application)

    ```bash
    brew cask install iterm2
    ```

2. Slack (the chatting application we use for internal communication)

    ```bash
    brew cask install slack
    ```

3. Google Chrome

    ```bash
    brew cask install google-chrome
    ```

4. Zoom.us (used to have team calls)

    ```bash
    brew cask install zoomus
    ```

5. Postgres.app

    Follow instructions 
    
    * https://www.robinwieruch.de/postgres-sql-macos-setup
    * https://stackoverflow.com/a/7975660/3901856
    * https://stackoverflow.com/a/35308200/3901856
    
6. Brew services menubar
   
   ```bash
   brew cask install brewservicesmenubar
   ```

7. Evernote 
   
   ```bash
   brew cask install evernote
   ```
8. Postico

    Follow instructions at https://eggerapps.at/postico/

9. Git fork

    Follow instructions at https://git-fork.com/

10. https://responsively.app/

11. https://github.com/sfsam/Itsycal
    

### Configuring Git

Run all following commands.

```bash
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
git config --global branch.autosetuprebase always
git config --global push.default current
git config --global core.mergeoptions --no-edit
```

Configure your name and email to help Git to set the author of the commits you will add onwards.

```bash
git config --global user.name "Your Name Here" # e.g. John Doe
git config --global user.email "your.email@bigbinary.com"
```

### Installing Ruby

We use `rbenv` (https://github.com/rbenv/rbenv) to manage versions of Ruby.

#### Installing rbenv

1. Ensure that rbenv is installed successfully by checking whether the `rbenv -v` command prints rbenv version or not.
If not installed, install it using `brew install rbenv` command.

2. Set up rbenv in your shell.

    ```bash
    rbenv init
    ```

    Follow the printed instructions.

3. Close your Terminal window and open a new one so your changes take effect.

4. Verify that rbenv is properly set up using this rbenv-doctor script:

    ```bash
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
    ```

    This command would print if everything is okay or not. If something's is not correct, it will instruct on how to troubleshoot and fix that problem.

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

https://jamesauble.medium.com/install-nvm-on-mac-with-brew-adb921fb92cc

We recommend to use `nvm` (https://github.com/nvm-sh/nvm) to manage versions of Node.

#### Installing nvm

Follow the installation instructions at https://github.com/nvm-sh/nvm#install--update-script.

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

To display some more information such as the current working directory's path, current git branch and whether the git directory is clean or not, please append the following to your `~/.bashrc` script.

```bash
export PS1='\w\[\033[33m\]$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/")\[\033[00m\]$([[ -n $(git status -s 2> /dev/null) ]] && echo "\033[0;31m*\033[0m") $ '
```

Then run `source ~/.bashrc` command.

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
