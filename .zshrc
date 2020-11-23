alias os='cd ~/projects/oss'
alias tw='cd ~/projects/thoughtwoot'
alias gp='cd ~/projects/goprospero'
alias rails_drop_create='rake db:drop:all  &&  rails db:create && rails db:migrate'
alias myip='ipconfig getifaddr en0'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


export NVM_DIR="/Users/muhsink/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
