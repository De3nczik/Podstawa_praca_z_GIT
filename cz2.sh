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
<<<<<<< HEAD
>>>>>>> init 
=======
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
>>>>>>> error
elif [[ $1 == "--help" || $1 == "-h" ]]; then
    
    echo "Dostępne opcje:"
    echo "--date (-d): Wyświetla dzisiejszą datę."
    echo "--logs (-l) [liczba]: Tworzy pliki log. Jeśli liczba jest podana, tworzy tyle plików, w przeciwnym razie tworzy 100 plików."
    echo "--init: Klonuje całe repozytorium do bieżącego katalogu i ustawia ścieżkę w zmiennej środowiskowej PATH."
    echo "--error (-e) [liczba]: Tworzy pliki errorx/errorx.txt. Jeśli liczba jest podana, tworzy tyle plików, w przeciwnym razie tworzy 100 plików."
    echo "--help (-h): Wyświetla tę pomoc."
else
    echo "Nieznana opcja. Użyj --help (-h), aby zobaczyć dostępne opcje."
fi
