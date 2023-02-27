function test-mail -d 'Test mail package'
    echo 'Testing mail package'
    cd ~/dev/proton/clients
    echo \n'🔬 Starting dev tests'
    yarn workspace @proton/activation test:dev
end