function pas -d 'Starting Proton Account'
    echo 'Starting Proton Account'
    cd ~/dev/proton/clients
    yarn workspace proton-account start $argv
end