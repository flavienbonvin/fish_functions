function pas -d 'Starting Proton Account'
    echo 'Starting Proton Account'
    cd ~/dev/clients
    yarn workspace proton-account start $argv
end