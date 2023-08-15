function run-mail -d 'Starting Proton Mail'
    echo 'Starting Proton Mail'
    cd ~/dev/proton/clients
    # yarn workspace proton-mail start $argv
    yarn start-all --applications "proton-account proton-mail" --api $argv
end