const express = require('express')
const petMissController = require('../controllers/petMissing')
const router = express.Router()

router.get('/', petMissController.getMissingPet)

module.exports = router