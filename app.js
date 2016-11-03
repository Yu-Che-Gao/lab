const express = require('express')
const app = express()
const port = process.env.PORT || 5000

app.use(express.static(__dirname + '/public'))
app.use(require('./controllers'))
app.set('view engine', 'pug')
app.listen(port, () => { console.log('listening on port ' + port) })