function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # User
  set_color $fish_color_user
  printf "%s" (whoami)
  set_color normal

  # PWD
  set_color $fish_color_cwd
	printf ":"

	set -l dir (dirname (prompt_pwd))
	if [ $dir != "." ]
		printf "%s/" $dir
	end
	set_color normal

	set_color $prompt_color_current_folder
	printf "%s" (basename (prompt_pwd))
  set_color normal

	basic_git_prompt
  printf "\n"

  if not test $last_status -eq 0
    set_color $fish_color_error
	else
		set_color $prompt_color_arrow
  end

  printf '➤ '
  set_color normal
end
