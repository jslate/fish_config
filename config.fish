rbenv init - | source

for cmd in rake rails
  alias $cmd="bundle exec $cmd"
end

complete -x -c cd -a "(__fish_complete_cd) (__fish_complete_path ~/src/plm/)"

setenv PWL_HOME ~/personal/src/pwl

setenv EDITOR subl

function tellme
  osascript -e 'display notification "have a good one" with title "the thing is done"'
end

set PATH /Users/jslate/.nvm $PATH

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
