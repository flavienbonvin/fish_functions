function test-acc -d 'Test account application'
    echo 'Testing account application'
    cd ~/dev/proton/clients
    echo \n'🔬 Starting dev tests'
    yarn workspace proton-account test:dev
end