
const express = require("express");


const app = express();
const port = process.env.PORT || 3306;


app.listen(port, () => {
 console.log(`Web server is listening on port ${port}!`);
});