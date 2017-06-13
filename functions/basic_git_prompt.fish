function basic_git_prompt --description 'Basic git prompt'
  # If git isn't installed, there's nothing we can do
  # Return 1 so the calling prompt can deal with it
  if not command -s git >/dev/null
    return 1
  end

  set -l branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if test -z $branch
    return
  end

  set_color $git_prompt_color_separator
  printf ' on '
  set_color normal

  set_color $git_prompt_color_branch
  printf '%s' $branch
  set_color normal

  set -l commit_hash (git rev-parse --short HEAD 2> /dev/null)
  if test -z $commit_hash
    return
  end

  set_color $git_prompt_color_commit
  printf ':%s' "$commit_hash"
  set_color normal
end
