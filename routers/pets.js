const express = require('express')
const petsController = require('../controllers/pets')
const router = express.Router()

router.get('/', petsController.getAllPets)

router.get('/:pet_id', petsController.getPetsById)

router.put('/:pet_id', petsController.updatePetsById)

router.delete('/:pet_id', petsController.deletePetsById)

module.exports = router