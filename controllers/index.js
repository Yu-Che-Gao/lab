const express = require('express')
const db = require('../db.js')
const router = express.Router()

router.get('/lab', (req, res) => res.render('index'))
router.get('/lab_api/v1/:collection/select', (req, res) => {
    try {
        let collection = db.get().collection(req.params.collection)
        collection.find().toArray((err, docs) => res.send(docs))
    } catch (error) {
        res.send('{"error":"' + error.message + '"}')
    }
})

module.exports = router