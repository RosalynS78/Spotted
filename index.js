require('dotenv').config()
const mysql = require('mysql2')
const express = require("express");

const usersRouter = require('./routers/users');
// const petsRouter = require("./routers/pet");
const authRouter = require('./routers/auth');
const { logger } = require('./middleware');

const app = express();
const port = process.env.PORT || 4001;

app.use(express.json());


app.use(logger);
app.use('/auth', authRouter);
app.use('/users', usersRouter);
// app.use('/pet', petsRouter);

app.get('/', (req, res) => {
    res.send('Welcome to our server!')
  })


  app.listen(port, () => {
    console.log(`Web server is listening on port ${port}!`);
   });
