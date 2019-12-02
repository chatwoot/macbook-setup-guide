# Maintainer : Ershad Kunnakkadan ( Github id: ershad )
# Paste this in your ~/.bashrc or ~/.zshrc file
#
# Run rspec on changed spec files in a branch

alias rc='bundle exec rspec $(git diff --diff-filter=M origin/master --name-only | grep "spec/.*_spec.rb" | tr "\n" " ")'
