if [ ! -e "/usr/local/bin/brew" ]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
fi

brew tap thoughtbot/formulae
brew install wget erlang hub node wrk rbenv ruby-build postgresql geos proj redis phantomjs gitsh mongodb

if [ ! `pgrep -n mongo` ]; then
  ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
fi

if [ ! `pgrep -n redis` ]; then
  ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
fi

if [ ! `pgrep -n postgres` ]; then
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
fi

