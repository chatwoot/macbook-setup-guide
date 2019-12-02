alias sf='cd ~/projects/snapflick'
alias sj='cd ~/projects/thoughtwoot/surveyjoy'
alias rj='cd ~/projects/remotejob'
alias gx='cd ~/projects/gitx'
alias os='cd ~/projects/oss'
alias bb='cd ~/projects/bigbinary'
alias tw='cd ~/projects/thoughtwoot'
alias rails_drop_create='rake db:drop:all  &&  rails db:create && rails db:migrate'
alias myip='ipconfig getifaddr en0'

export CSC_KEY_PASSWORD=D1211993##
export CSC_LINK=~/projects/bigbinary/aceinvoice-electron/build/certificate.p12
export ACEINVOICE_SENTRY_AUTH_TOKEN=e5639c13f1144345a96c4d416789e2501636e5af2a974dab8647aeae6f31a5c0
export GH_TOKEN=cdccb7ea624a12a2e4e6c91874f63753edec1571


alias connectsfdev='sudo ssh -i ~/Documents/AWS/Snapflick_developement.pem ubuntu@52.43.47.132'
alias connectsfrelease='sudo ssh -i ~/Documents/AWS/snapflick_release.pem ubuntu@100.20.29.145'


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


PS1='\w\[\033[33m\]$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/")\[\033[00m\]$([[ -n $(git status -s 2> /dev/null) ]] && echo "\033[0;31m*\033[0m") $ '
