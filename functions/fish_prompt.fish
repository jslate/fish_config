function fish_prompt
  echo
  set_color purple
  printf (pwd)
  printf ' '
  set_color green
  echo (date "+%m/%d/%y %H:%M:%S")
  if set git_branch (git rev-parse --abbrev-ref HEAD ^ /dev/null)
    set_color red
    echo "<"$git_branch"> "
  else
    echo "> "
  end
end