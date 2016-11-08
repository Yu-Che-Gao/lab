const express = require('express')
const app = express()
const path = require('path')
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')
const session = require('express-session')
const Passport = require('passport')
const db = require('./db.js')
const auth = require('./models/auth.js')
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

app.use(cookieParser())
app.use(bodyParser())
app.use(session({ secret: 'lab secret' }));
app.use(Passport.initialize())
app.use(Passport.session())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(express.static(__dirname + '/public'))
Passport.use('lab', auth.config())
Passport.serializeUser((user, done) => done(null, user))
Passport.deserializeUser((user, done) => done(null, user))
app.use(require('./controllers'))
app.set('view engine', 'pug')
app.listen(port, () => console.log('listening on port ' + port))