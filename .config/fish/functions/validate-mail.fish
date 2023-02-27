function validate-mail -d 'Validate Mail package'
    echo 'Validate mail package'
    cd ~/dev/proton/clients
    echo \n'🐱 Validate types'
    yarn workspace proton-mail check-types
    echo \n'👕 Validate lint'
    yarn workspace proton-mail lint
end