elif [[ $1 == "--help" ]]; then
    # Wyświetlanie dostępnych opcji
    echo "Dostępne opcje:"
    echo "--date: Wyświetla dzisiejszą datę."
    echo "--logs [liczba]: Tworzy pliki log. Jeśli liczba jest podana, tworzy tyle plików, w przeciwnym razie tworzy 100 plików."
    echo "--help: Wyświetla tę pomoc."
else
    echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi
