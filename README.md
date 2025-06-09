# Linux-settings
Be too lazy to write

```bash
#### 
fish_config prompt choose astronaut
yse | fish_config prompt save
#### 
cp /usr/share/fish/functions/prompt_pwd.fish ~/.config/fish/functions/
sed -i '/set -ql _flag_d/,/or set -l fish_prompt_pwd_full_dirs/ c\    set -l fish_prompt_pwd_dir_length 0' ~/.config/fish/functions/prompt_pwd.fish
sed -i -e '/if test "$fish_prompt_pwd_dir_length"/,/^end/d' -e '/set -l tmp/a\\        echo $tmp\n    end\nend' ~/.config/fish/functions/prompt_pwd.fish
```
