function test-act -d 'Test activation package'
    echo 'Testing activation package'
    cd ~/dev/clients
    echo \n'🔬 Starting dev tests'
    yarn workspace @proton/activation test:dev
end