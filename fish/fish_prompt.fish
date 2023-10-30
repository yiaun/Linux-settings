function fish_prompt --description 'Write out the prompt'
    set -l pwd (string replace --regex '^.*/' '' $PWD)
    set -l prompt_symbol ''
    switch $USER
        case root toor; set prompt_symbol '#'
        case '*'; set prompt_symbol '$'
    end
    if [ $PWD = $HOME ] ;
        printf "[%s@%s %s%s%s]%s " $USER (hostname -s) (set_color $fish_color_cwd) \~ (set_color normal) $prompt_symbol
    else if [ $PWD = '/' ];
        printf "[%s@%s %s%s%s]%s " $USER (hostname -s) (set_color $fish_color_cwd) \/ (set_color normal) $prompt_symbol
    else
        printf "[%s@%s %s%s%s]%s " $USER (hostname -s) (set_color $fish_color_cwd) $pwd (set_color normal) $prompt_symbol
    end
end
