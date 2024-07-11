function fish_prompt
    if test -d .git
        set_color cyan
        printf " \uf418 "
        echo -n  "$(git rev-parse --abbrev-ref HEAD)"   
    end

    set_color normal
    echo -n " 🦆 " 
end