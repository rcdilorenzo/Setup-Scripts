if [ ! -e "/usr/local/bin/brew" ]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
fi
brew install wget erlang hub node wrk rbenv postgresql geos proj redis phantomjs

if [ ! `pgrep -n postgres` ]; then
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
fi

