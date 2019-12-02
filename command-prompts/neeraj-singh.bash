# Maintainer Neeraj Singh (Github id: neerajdotname)
# Screenshot: https://user-images.githubusercontent.com/6399/69457198-6357c600-0d21-11ea-9072-5ad673c880b2.png

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset


a="\n$txtwht\u$txtblu \w $txtpur"
e="$\[\033[00m\] "

function parse_git_url {
  git config --get remote.origin.url | sed 's/\.git$//;s/\(.*[:/]\)\([^/]*\)\/\([^/]*\)\(\.git\)\{0,1\}$/(\2\/\3)/'
}

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function custom_git_prompt {
  branch=$(git branch 2> /dev/null) || return
  #echo "$(parse_git_url) -> $(parse_git_branch)"
  echo "$(parse_git_branch)"
}

function ruby_version() {
  ruby -e "print RUBY_VERSION"
}

#PS1="$a\$(ruby_version) \n\$(custom_git_prompt)\n$e"
PS1="$a\$(custom_git_prompt)\n$e"

