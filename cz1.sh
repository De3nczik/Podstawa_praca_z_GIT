if [[ $1 == "--date" ]]; then

    echo $(date +"%Y-%m-%d")
elif [[ $1 == "--logs" ]]; then
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
elif [[ $1 == "--help" ]]; then
    
    echo "Dostępne opcje:"
    echo "--date: Wyświetla dzisiejszą datę."
    echo "--logs [liczba]: Tworzy pliki log. Jeśli liczba jest podana, tworzy tyle plików, w przeciwnym razie tworzy 100 plików."
    echo "--help: Wyświetla tę pomoc."
else
    echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi
