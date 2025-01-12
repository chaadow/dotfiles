# #!/bin/sh

if [[ -x "$(which rbenv)" ]]
then
  echo
  echo "Installing Ruby tools and Ruby 3.4"
  eval "$(rbenv init -)"
  rbenv install 3.4.1 --skip-existing
  rbenv global 3.4.1
  gem install bundler

  # this is for using vim in irb.
  gem install interactive_editor

  rbenv rehash
fi
