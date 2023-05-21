if [[ $1 == "--date" ]]; then
    # Wyświetlanie dzisiejszej daty
    echo $(date +"%Y-%m-%d")
elif [[ $1 == "--logs" ]]; then
    if [[ -n $2 && $2 =~ ^[0-9]+$ ]]; then
        # Utworzenie określonej liczby plików log
        for ((i=1; i<=$2; i++)); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    else
        # Utworzenie 100 plików log
        for ((i=1; i<=100; i++)); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: $0" >> $filename
            echo "Data: $(date +"%Y-%m-%d")" >> $filename
        done
    fi
fi

