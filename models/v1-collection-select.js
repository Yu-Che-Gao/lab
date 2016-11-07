const v1CollectionSelect = (req, res) => {
    try {
        let collection = db.get().collection(req.params.collection)
        collection.find().toArray((err, docs) => res.send(docs))
    } catch (error) {
        res.send('{"error":"' + error.message + '"}')
    }
}

module.exports = v1CollectionSelect 