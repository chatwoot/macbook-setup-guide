# Maintainer : Ershad Kunnakkadan ( Github id: ershad )
# Paste this in your ~/.bashrc or ~/.zshrc file
#
# Alert when the internet is back. Useful when you have unstable internet.

check_internet () {
  while true; do
    if (curl google.com -s --max-time 2 > /dev/null); then
      say "Internet is back"
      break
    fi
    sleep 1
  done
}
