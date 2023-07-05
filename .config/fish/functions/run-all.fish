function run-all -d 'Starting all Proton apps'
    echo 'Starting all Proton apps'
    cd ~/dev/proton/clients
    yarn start-all --applications "proton-account proton-mail proton-calendar proton-drive" --api $argv
end