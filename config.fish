rbenv init - | source

# for cmd in rake rails
#   alias $cmd="bundle exec $cmd"
# end

complete -x -c cd -a "(__fish_complete_cd) (__fish_complete_path ~/src/plm/)"

setenv PWL_HOME ~/personal/src/pwl

setenv EDITOR atom

function tellme
  osascript -e 'display notification "have a good one" with title "the thing is done"'
end

set PATH $HOME/bin /Users/jslate/.nvm /usr/local/Cellar/postgresql95/9.5.5/bin/ /Users/jslate/Library/Python/3.5/bin $PATH

set NVM_DIR "$HOME/.nvm"

function nvm
 bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function er
  eralchemy -i $argv -o (echo $argv | sed 's/\.[^.]*$/.pdf/')
end

function git_rm_deleted
  git ls-files --deleted -z | xargs -0 git rm
end

bass source ~/.nvm/nvm.sh
bass source ~/.bash_profile

alias love="/Applications/love.app/Contents/MacOS/love"

function npm
  if test -e package.json
    /usr/local/bin/npm $argv
  else if test -d frontend
    cd frontend; npm $argv; cd ..
  end
end
