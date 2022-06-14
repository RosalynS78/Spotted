const express = require('express')
const petsFoundController = require('../controllers/petsFound')
const router = express.Router()

router.get('/', petsFoundController.getFoundPets)

router.post('/', petsFoundController.createFoundPet)



module.exports = router