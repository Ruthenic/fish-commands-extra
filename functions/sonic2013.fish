function sonic2013 #open up the sonic 1/2 mobile decomp from terminal because PWD needs to be in the same dir as the executable to work
    set tmp (pwd)
    cd /home/ruthenic/.local/sonic2013
    ./sonic2013
    cd $tmp
end
