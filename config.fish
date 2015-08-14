rbenv init - | source

for cmd in rake rails
  alias $cmd="bundle exec $cmd"
end