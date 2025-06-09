function prompt_pwd --description 'short CWD for the prompt'
    set -l options h/help d/dir-length= D/full-length-dirs=
    argparse -n prompt_pwd $options -- $argv
    or return

    if set -q _flag_help
        __fish_print_help prompt_pwd
        return 0
    end

    set -q argv[1]
    or set argv $PWD

    set -l fish_prompt_pwd_dir_length 0

    for path in $argv
        # Replace $HOME with "~"
        set -l realhome (string escape --style=regex -- ~)
        set -l tmp (string replace -r '^'"$realhome"'($|/)' '~$1' $path)

        echo $tmp
    end
end
