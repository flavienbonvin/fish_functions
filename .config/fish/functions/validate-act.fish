function validate-act -d 'Validate activation package'
    echo 'Validate activation package'
    cd ~/dev/proton/clients
    echo \n'🐱 Validate types'
    yarn workspace @proton/activation check-types
    echo \n'👕 Validate lint'
    yarn workspace @proton/activation lint
end