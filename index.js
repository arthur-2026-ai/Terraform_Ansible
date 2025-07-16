
const express = require('express');
const path = require('path');
const app = express();
const PORT = 3001;

// Sert les fichiers statiques du dossier "public"
app.use(express.static(path.join(__dirname, 'public')));

// Redirige manuellement "/" vers index.html
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Gère les routes non trouvées
app.use((req, res) => {
  res.status(404).send('Not Found');
});

// Démarre le serveur
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
