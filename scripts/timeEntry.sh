# Maintainer : Chirag Sah ( Github id: chiraggshah )
# Paste this in your ~/.bashrc or ~/.zshrc file
#
# Get last n time entry logs

# To get the last 15 commit messages
# Call it from the terminal as:
# > timeEntry 15
#
timeEntry() {
  echo "--------------------------------------------"
  echo "Printing commit messages for last $1 commits"
  echo "--------------------------------------------"
  git --no-pager log -$1 --reverse --pretty=format:%B | tr -s '\n' '\n'
  echo "--------------------------------------------"
}
