function validate-all -d 'Validate all application'
    cd ~/dev/proton/clients
    echo \n'🐱 Validate account'
    yarn workspace proton-account check-types
    yarn workspace proton-account lint
    echo \n'🪴 Account validated'
    echo '---------------------------'

    echo \n'🐱 Validate admin'
    yarn workspace proton-admin check-types
    yarn workspace proton-admin lint
    echo \n'🪴 Admin validated'
    echo '---------------------------'

    echo \n'🐱 Validate calendar'
    yarn workspace proton-calendar check-types
    yarn workspace proton-calendar lint
    echo \n'🪴 Calendar validated'
    echo '---------------------------'

    echo \n'🐱 Validate drive'
    yarn workspace proton-drive check-types
    yarn workspace proton-drive lint
    echo \n'🪴 Drive validated'
    echo '---------------------------'

    echo \n'🐱 Validate mail'
    yarn workspace proton-mail check-types
    yarn workspace proton-mail lint
    echo \n'🪴 Mail validated'
    echo '---------------------------'

    echo \n'🐱 Validate activation'
    yarn workspace @proton/activation check-types
    yarn workspace @proton/activation lint
    echo \n'🪴 Activation validated'
    echo '---------------------------'

    echo \n'🐱 Validate atoms'
    yarn workspace @proton/atoms check-types
    yarn workspace @proton/atoms lint
    echo \n'🪴 Atoms validated'
    echo '---------------------------'
    
    echo \n'🐱 Validate components'
    yarn workspace @proton/components check-types
    yarn workspace @proton/components lint
    echo \n'🪴 Components validated'
    echo '---------------------------'

    echo \n'🐱 Validate shared'
    yarn workspace @proton/shared check-types
    yarn workspace @proton/shared lint
    echo \n'🪴 Shared validated'
    echo '---------------------------'
end