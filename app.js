const express = require('express')
const app = express()
const path = require('path')
const db = require('./db.js')
const port = process.env.PORT || 80
const mongoURI = 'mongodb://localhost:27017/lab'

db.connect(mongoURI, function (err) {
    if (err) {
        console.log('Unable to connect to Mongo. Error: ' + err)
        process.exit(1)
    } else {
        console.log('connect to ' + mongoURI)
    }
})

app.use(express.static(__dirname + '/public'))
app.use(require('./controllers'))
app.set('view engine', 'pug')
app.listen(port, () => console.log('listening on port ' + port))