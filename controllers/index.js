const express = require('express')
const path = require('path')
const db = require('../db.js')
const router = express.Router()

router.get('/lab', (req, res) => res.render('index'))
router.get('/lab_api/doc', (req, res) => res.redirect('/doc'))

/**
 * @api {get} /lab_api/:collection/select Request Collection Info
 * @apiName GetCollection
 * @apiGroup Collection
 * @apiVersion 1.0.0
 * 
 * @apiSuccess {json} id Index of collection
 * @apiSuccess {json} content Content of collection
 * @apiError {json} error Error message of collection operation
 * @apiSampleRequest /lab_api/v1/thesis/select
 * 
 * @apiSuccessExample Example Data on Success
 * [
 *      {"_id":"581a18d40aa22e520893eb1c","id":1,"type":"B","name":"可程式化生理訊號閘道器","country":"台灣","number":"M412747\t","member":"湯秉宏、曾明性","owner":"湯秉宏、曾明性","date":"100/08/16"},
 *      {"_id":"581a18d40aa22e520893eb1d","id":2,"type":"B","name":"睡眠障礙矯正輔助裝置","country":"台灣","number":"M425645\t","member":"湯秉宏、曾明性","owner":"湯秉宏、曾明性","date":"01/04/01"}
 * ]
 */
router.get('/lab_api/v1/:collection/select', (req, res) => {
    try {
        let collection = db.get().collection(req.params.collection)
        collection.find().toArray((err, docs) => res.send(docs))
    } catch (error) {
        res.send('{"error":"' + error.message + '"}')
    }
})

module.exports = router