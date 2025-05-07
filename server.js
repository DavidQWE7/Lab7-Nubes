const express = require("express");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 80;

// Servir archivos estáticos
app.use(express.static(path.join(__dirname, "public")));

app.listen(PORT, () =>
  console.log(`Sitio futurista escuchando en http://localhost:${PORT}`)
);
