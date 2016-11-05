const express = require('express')
const db = require('../db.js')
const router = express.Router()

router.get('/lab', (req, res) => { res.render('index') })
router.get('/conference_papers/select', (req, res) => {
    let collection=db.get().collection('conference_paper')
    collection.find().toArray((err, docs) => res.send(docs))
})

module.exports = router