gem install compass shoestring bundle powder

if [ ! `pgrep -n pow` ]; then
  curl get.pow.cx | sh
fi
