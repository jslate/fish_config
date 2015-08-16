rbenv init - | source

for cmd in rake rails
  alias $cmd="bundle exec $cmd"
end

complete -x -c cd -a "(__fish_complete_cd) (__fish_complete_path ~/src/plm/)"
