const express = require('express')
const usersController = require('../controllers/users')
const router = express.Router()

router.get('/users', usersController.getAllUsers)

router.get('/users:id', usersController.getUserById)

router.post('/users', usersController.createUser)

router.post('/users', usersController.createUserContact)

router.post('/users', usersController.createUserLocation)

router.put('/users:id', usersController.updateUserById)

router.put('/users:id', usersController.updateUserContact) 

router.put('/users:id', usersController.updateUserLocation)

router.delete('/users:id', usersController.deleteUserById)

module.exports = router