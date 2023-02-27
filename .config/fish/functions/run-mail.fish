function run-mail -d 'Starting Proton Mail'
    echo 'Starting Proton Mail'
    cd ~/dev/proton/clients
    yarn workspace proton-mail start $argv
end