const express = require('express')
const usersController = require('../controllers/users')

const router = express.Router()

router.get('/', usersController.getAllUsers)

router.get('/:id', usersController.getUserById)

router.post('/', usersController.createUser)

router.post('/', usersController.createUserContact)

router.post('/', usersController.createUserLocation)

router.put('/:id', usersController.updateUserById)

router.put('/:id', usersController.updateUserContact) 

router.put('/:id', usersController.updateUserLocation)

router.delete('/:id', usersController.deleteUserById)

module.exports = router