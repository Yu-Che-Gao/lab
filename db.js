const mongoClient = require('mongodb').MongoClient
const state = { db: null }

function connect(url, done) {
    if (state.db) return done()
    mongoClient.connect(url, function (err, db) {
        if (err) return done(err)
        state.db = db
        done()
    })
}

function get() {
    return state.db
}

function close(done) {
    if (state.db) {
        state.db.close(function (err, result) {
            state.db = null
            state.mode = null
            done(err)
        })
    }
}

exports.connect = connect
exports.get = get
exports.close = close