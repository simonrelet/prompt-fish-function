function basic_git_prompt --description 'Basic git prompt'
  # If git isn't installed, there's nothing we can do
  # Return 1 so the calling prompt can deal with it
  if not command -s git >/dev/null
    return 1
  end

  set -l branch (git rev-parse --abbrev-ref HEAD ^/dev/null)
  if test -z $branch
    return
  end

  set_color $git_prompt_color_separator
  printf ' | '
  set_color normal

  set_color $git_prompt_color_branch
  printf "%s" $branch
  set_color normal

  set_color $git_prompt_color_commit
  printf ":%s" (git rev-parse --short HEAD)
  set_color normal
end
