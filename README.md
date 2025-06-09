# Linux-settings
Be too lazy to write

#### 
fish_config prompt choose astronaut
#### 
cp /usr/share/fish/functions/prompt_pwd.fish ~/.config/fish/functions/
sed -i '14,25d' prompt_pwd.fish
sed -i '21,38d' prompt_pwd.fish
sed -i "13a set -l fish_prompt_pwd_dir_length 0" prompt_pwd.fish ; sed -i "14s/^/    /" prompt_pwd.fish
sed -i "20a echo $tmp" prompt_pwd.fish ; sed -i '21s/^/\t/' prompt_pwd.fish
