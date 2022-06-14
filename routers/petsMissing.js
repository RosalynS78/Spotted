const express = require('express')
const petsMissingController = require('../controllers/petsMissing')
const router = express.Router()

router.get('/', petsMissingController.getMissingPets)

router.post('/', petsMissingController.createMissingPet)


module.exports = router