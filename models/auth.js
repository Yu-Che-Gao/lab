const LocalStrategy = require('passport-local').Strategy
const Passport = require('passport')
const db = require('../db.js')

function config() {
    return new LocalStrategy(
        (username, password, done) => {
            let collection = db.get().collection('users')
            collection.find({ username: username, password: password }).toArray((error, user) => {
                if (user.length === 0) return done(null, false, { message: 'Incorrect user.' })
                else return done(null, user)
            })
        }
    )
}

function login() {
    return Passport.authenticate('lab', { session: true })
}

function isLogined(req, res, next) {
    if(typeof(req.user)==='undefined') return res.status(401).json({ error: 'User not authenticated' })
    else return next()
}

exports.config = config
exports.login = login
exports.isLogined = isLogined