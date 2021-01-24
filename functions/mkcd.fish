function mkcd --description "Make a directory, and automatically cd into it."
    set alldirs (string split ' ' (string split '/' $argv))
    echo $alldirs
    for path in $alldirs
        mkdir $path
        cd $path > ~/.tmp/mkcd.txt 2> ~/.tmp/mkcd.txt
        if grep -i "Too many args for cd command" ~/.tmp/mkcd.txt
            echo mkcd Error: Too many directories specified
            rm -r $path
        end
        rm ~/.tmp/mkcd.txt
    end
end
