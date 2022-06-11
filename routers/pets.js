const express = require('express')
const petsController = require('../controllers/pets')
const router = express.Router()

router.get('/', petsController.getAllPets)

router.get('/:pet_id', petsController.getPetsById)























module.exports = router