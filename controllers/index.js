const express = require('express')
const router = express.Router()

router.get('/lab', (req, res) => { res.render('index') })
module.exports = router