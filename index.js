require('dotenv').config()
const express = require("express");

const usersRouter = require('./routers/users');
// const petsRouter = require("./routers/pet");

const app = express();
const port = process.env.PORT || 8000;

app.use(express.json());



app.use('/users', usersRouter);
// app.use('/pet', petsRouter);

app.get('/', (req, res) => {
    res.send('Welcome to our server!')
  })


  app.listen(port, () => {
    console.log(`Web server is listening on port ${port}!`);
   });
