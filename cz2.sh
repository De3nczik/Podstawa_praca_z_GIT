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
