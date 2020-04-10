function mkcd --description "Make a directory, and automatically cd into it."
    mkdir $argv
    cd $argv > ~/.tmp/mkcd.txt 2> ~/.tmp/mkcd.txt
    if grep -i "Too many args for cd command" ~/.tmp/mkcd.txt
        echo mkcd Error: Too many directories specified
        rm -r $argv
    end
    rm ~/.tmp/mkcd.txt
end
