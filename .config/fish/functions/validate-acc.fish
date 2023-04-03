function validate-acc -d 'Validate account application'
    echo 'Validate account application'
    cd ~/dev/proton/clients
    echo \n'🐱 Validate types'
    yarn workspace proton-account check-types
    echo \n'👕 Validate lint'
    yarn workspace proton-account lint
end