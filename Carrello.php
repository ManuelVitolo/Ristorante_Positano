<?php
// Verifica se il carrello esiste già e inizializzalo se necessario
if (!isset($_COOKIE['carrello'])) { //serve a verificare se il cookie chiamato 'carrello' è stato settato o definito.
    $carrello = [];
} else {
    $carrello = unserialize($_COOKIE['carrello']); //unserialize mi restituisce una stringa
}

// Funzione per aggiungere un articolo al carrello
function aggiungiAlCarrello($id, $nome, $prezzo) {
    global $carrello; //serve per rendere la variabile utilizzabile a tutti i metodi o funzioni
    
    // Verifica se l'articolo è già nel carrello
    if (isset($carrello[$id])) {
        $carrello[$id]['quantita']++;
    } else {
        $carrello[$id] = [
            'nome' => $nome,
            'prezzo' => $prezzo,
            'quantita' => 1
        ];
    }
    
    // Aggiorna il cookie con il carrello aggiornato
    setcookie('carrello', serialize($carrello), time() + 3600, '/'); //serialize mi converte un oggetto in una stringa
}

// Funzione per rimuovere un articolo dal carrello
function rimuoviDalCarrello($id) {
    global $carrello;
    
    // Rimuovi l'articolo dal carrello
    unset($carrello[$id]);
    
    // Aggiorna il cookie con il carrello aggiornato
    setcookie('carrello', serialize($carrello), time() + 3600, '/');
}

// Funzione per svuotare il carrello
function svuotaCarrello() {
    global $carrello;
    
    // Svuota il carrello
    $carrello = [];
    
    // Rimuovi il cookie del carrello
    setcookie('carrello', '', time() - 3600, '/');
}

// Esempi di utilizzo delle funzioni

// Aggiungi una pizza al carrello
aggiungiAlCarrello(1, 'Pizza Margherita', 8.50);

// Aggiungi un altro articolo (piatto) al carrello
aggiungiAlCarrello(2, 'Carbonara', 9.00);

// Rimuovi la pizza Margherita dal carrello
rimuoviDalCarrello(1);

// Svuota il carrello
svuotaCarrello();

?>
