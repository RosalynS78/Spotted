const express = require('express')
const petsController = require('../controllers/pets')
const { checkJwt } = require('../middleware')
const router = express.Router()

router.get('/', petsController.getPetById)





















module.exports = router