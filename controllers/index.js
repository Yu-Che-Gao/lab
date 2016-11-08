const express = require('express')
const path = require('path')
const db = require('../db.js')
const auth = require('../models/auth.js')
const router = express.Router()

router.get('/lab', (req, res) => res.render('index'))
router.get('/lab_api/doc', (req, res) => res.redirect('/doc'))

/**
 * @api {get} /lab_api/v1/:collection/select Request Collection Info
 * @apiName SelectCollection
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

/**
 * @api {post} /lab_api/v1/:collection/updateTimeById Request to Update Time of Collection
 * @apiName UpdateCollection
 * @apiGroup Collection
 * @apiVersion 1.0.0
 * 
 * @apiParam {Number} id new id
 * @apiParam {String} time new submit time
 * 
 * @apiSuccess {json} info info after update
 * @apiError {json} error Error message of collection update
 * @apiSampleRequest /lab_api/v1/thesis/updateTimeById
 * 
 * @apiSuccessExample Example Data on Success
 * { "ok": 1, "nModified": 1, "n": 1 }
 * 
 * @apiErrorExample Example Data on Error
 * { "error": "Cannot read property 'id' of undefined" }
 */
router.post('/lab_api/v1/:collection/updateTimeById', (req, res) => {
    try {
        let collection = db.get().collection(req.params.collection)
        collection.updateOne({ "id": parseInt(req.body.id) }, { "$set": { "submitTime": req.body.time.toString() } }, (error, result) => {
            if (error) {
                res.send('{"error":"' + error + '"}')
            } else {
                res.send(result)
            }
        })
    } catch (error) {
        res.send('{"error":"' + error.message + '"}')
    }
})

/**
 * @api {post} /lab_api/v1/:collection/insert Request to Insert Collection
 * @apiName InsertCollection
 * @apiGroup Collection
 * @apiVersion 1.0.0
 * 
 * @apiParam {String} data new json data
 * 
 * @apiSuccess {json} info info after insert
 * @apiError {json} error Error message of collection insert
 * @apiSampleRequest /lab_api/v1/thesis/insert
 * @apiSuccessExample Example Data on Success
 * { "ok": 1, "n": 1 }
 */
router.post('/lab_api/v1/:collection/insert', (req, res) => {
    try {
        let collection = db.get().collection(req.params.collection)
        collection.insertOne(JSON.parse(req.body.data.toString()), (error, result) => {
            if (error) {
                res.send('{"error":"' + error + '"}')
            } else {
                res.send(result)
            }
        })
    } catch (error) {
        res.send('{"error":"' + error.message + '"}')
    }
})


/**
 * @api {post} /lab_api/v1/auth/login Request to Login
 * @apiName Login
 * @apiGroup Auth
 * @apiVersion 1.0.0
 * 
 * @apiParam {String} username username
 * @apiParam {String} password password
 */

router.get('/login_page', auth.isLogined, (req, res) => res.send('testing'))
router.post('/lab_api/v1/auth/login', auth.login(), (req, res) => res.send('username:' + req.user[0].username))
module.exports = router