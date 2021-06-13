
var express = require('express') 
var app = express()               

var port = process.env.PORT || 8080  

app.get('/', function(req, res) {
  res.json({ mensaje: '¡Hola Mundo!' })   
})

app.get('/magistralPenguin', function(req, res) {
  res.json({ mensaje: 'Magistral Penguin' })  
})

app.post('/', function(req, res) {
  res.json({ mensaje: 'Método post' })   
})

app.del('/', function(req, res) {
  res.json({ mensaje: 'Método delete' })  
})

// Inicio del servidor API REST
app.listen(port)
console.log('API escuchando en el puerto ' + port)