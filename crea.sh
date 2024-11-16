#!/bin/bash

# Script per inizializzare un repository Git, collegarlo a una repository GitHub e spingere i file
# Assicurati di cambiare il nome della repository GitHub prima di eseguire

# Configura il nome della repository GitHub
REPO_URL="https://github.com/giovannigadaleta73/conf-c-4851-h335.git"



# 3. Cancella eventuale cartella .git (se presente)
if [ -d ".git" ]; then
    echo "Cancello la cartella .git esistente..."
    rm -rf .git
fi

# 4. Modifica il file aggiorna.sh
# Aggiungi la logica per modificare aggiorna.sh, se necessaria
# Esempio: sostituisci una stringa (modifica solo se necessario)
echo "Modifico aggiorna.sh (placeholder per modifiche future)..."
# sed -i 's/vecchia-stringa/nuova-stringa/' aggiorna.sh

# 5. Inizializza Git
echo "Inizializzo il repository Git..."
git init

# 6. Aggiungi i file al commit
echo "Aggiungo i file al repository..."
git add .

# 7. Effettua il commit iniziale
echo "Creo il commit iniziale..."
git commit -m "Commit iniziale"

# 8. Collega il repository locale a GitHub
echo "Collego il repository locale a GitHub..."
git remote add origin "$REPO_URL"

# 9. Imposta il branch principale come 'main'
echo "Imposto il branch principale come 'main'..."
git branch -M main

# 10. Spingi i file su GitHub
echo "Spingo i file su GitHub..."
git push -u origin main

echo "Procedura completata. Repository creata e spinta su GitHub!"

