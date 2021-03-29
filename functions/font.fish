function install-fonts -a dir -d "A tool to open all font files in the directory with gnome-font-viewer"
    for i in (ls $dir)
          gnome-font-viewer $i
end
