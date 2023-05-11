function validate-all -d 'Validate all application'
    cd ~/dev/proton/clients
    echo \n'🐱 Validate account'
    yarn workspace proton-account check-types
    yarn workspace proton-account lint

    echo \n'🐱 Validate admin'
    yarn workspace proton-admin check-types
    yarn workspace proton-admin lint

    echo \n'🐱 Validate calendar'
    yarn workspace proton-calendar check-types
    yarn workspace proton-calendar lint

    echo \n'🐱 Validate drive'
    yarn workspace proton-drive check-types
    yarn workspace proton-drive lint

    echo \n'🐱 Validate mail'
    yarn workspace proton-mail check-types
    yarn workspace proton-mail lint

    echo \n'🐱 Validate activation'
    yarn workspace @proton/activation check-types
    yarn workspace @proton/activation lint

    echo \n'🐱 Validate atoms'
    yarn workspace @proton/atoms check-types
    yarn workspace @proton/atoms lint
    
    echo \n'🐱 Validate components'
    yarn workspace @proton/components check-types
    yarn workspace @proton/components lint

    echo \n'🐱 Validate shared'
    yarn workspace @proton/shared lint
    yarn workspace @proton/shared check-types
end