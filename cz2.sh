elif [[ $1 == "--init" ]]; then
    git clone https://github.com/De3nczik/Podstawa_praca_z_GIT.git .
    export PATH=$PATH:$(pwd)