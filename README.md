# prompt-fish-function

> A prompt function for [Fish](http://fishshell.com/) shell.

## Installation

```sh
curl -o ~/.config/fish/functions/fish_prompt.fish --create-dirs https://raw.githubusercontent.com/simonrelet/prompt-fish-function/master/functions/fish_prompt.fish
curl -o ~/.config/fish/functions/basic_git_prompt.fish --create-dirs https://raw.githubusercontent.com/simonrelet/prompt-fish-function/master/functions/basic_git_prompt.fish
```

**With [Fisherman](https://github.com/fisherman/fisherman)**

```sh
fisher install simonrelet/prompt-fish-function
```

## Usage

Set the variables for the colors in  _~/.config/fish/config.fish_:
```
# Colors, uses terminal ones
set fish_color_user white
set fish_color_cwd '-o' 'black'
set fish_color_error red

# Colors for prompt
set prompt_color_arrow '-o' 'black'
set prompt_color_current_folder green

# Colors for git prompt
set git_prompt_color_separator '-o' 'black'
set git_prompt_color_branch green
set git_prompt_color_commit '-o' 'black'
```

## License

MIT.
