function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  # User
  set -l me (whoami)
  if [ "$me" = "root" ]
    set_color $fish_color_user_root
  else
    set_color $fish_color_user
  end
  printf '%s' (whoami)
  set_color normal

  # PWD
  set_color $fish_color_cwd
  printf ':'
  set -l dir (dirname (prompt_pwd))
  if [ $dir != '.' ]
    printf '%s/' $dir
  end
  set_color normal

  set_color $prompt_color_current_folder
  printf '%s' (basename (prompt_pwd))
  set_color normal

  basic_git_prompt
  printf '\n'

  if not test $last_status -eq 0
    set_color $fish_color_error
  else
    set_color $prompt_color_arrow
  end

  printf '➤ '
  set_color normal
end

function fish_right_prompt --description 'Write out the right prompt'
  set_color $fish_color_cwd
  printf '%s\n' (date '+%Y-%m-%d %H:%M:%S')
  set_color normal
end
