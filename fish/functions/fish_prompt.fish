function fish_prompt
  set_color green
  echo -n $USER@(prompt_hostname)
  echo -n ' '
  set_color yellow
  echo -n (prompt_pwd)
  set_color cyan
  echo (__fish_git_prompt)
  set_color normal
  echo '$ '
end
