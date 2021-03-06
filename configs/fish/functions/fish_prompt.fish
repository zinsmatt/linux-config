# name: Classic
function fish_prompt --description "Write out the prompt"
  set -l last_status $status
  if set -q CONDA_LEFT_PROMPT
      __conda_add_prompt
  end
  return_last_status $last_status
    set -l color_cwd
    set -l suffix

  switch $USER
  case root toor
    set color_cwd $fish_color_cwd_root
    set suffix '#'
  case '*'
    set color_cwd $fish_color_cwd
    set color_cwd 32a852
    set suffix '>'
  end
  set color_dir $fish_color_param
  echo -n -s (set_color $color_cwd) "$USER" @ (prompt_hostname) ' ' (set_color $color_dir) (prompt_pwd) (set_color normal) "$suffix "
    
    
    
end
