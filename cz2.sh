<<<<<<< HEAD
if [[ $1 == "--date" || $1 == "-d" ]]; then

    echo $(date +"%Y-%m-%d")
=======
elif [[ $1 == "--logs" || $1 == "-l" ]]; then
    if [[ -n $2 && $2 =~ ^[0-9]+$ ]]; then

        for ((i=1; i<=$2; i++)); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    else

        for ((i=1; i<=100; i++)); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    fi
>>>>>>> logs
=======
elif [[ $1 == "--init" ]]; then
    git clone https://github.com/De3nczik/Podstawa_praca_z_GIT.git .
    export PATH=$PATH:$(pwd)
>>>>>>> init    
elif [[ $1 == "--error" || $1 == "-e" ]]; then
    if [[ -n $2 && $2 =~ ^[0-9]+$ ]]; then
        # Utworzenie określonej liczby plików errorx/errorx.txt
        for ((i=1; i<=$2; i++)); do
            filename="error$i/error$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    else
        # Utworzenie 100 plików errorx/errorx.txt
        for ((i=1; i<=100; i++)); do
            filename="error$i/error$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    fi
