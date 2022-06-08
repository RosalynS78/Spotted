const mysql = require('mysql2')
const pool = require('../sql/connections')
const { handleSQLError } = require('../sql/error')


// module.exports = {
     //post by id
// getPostById,
    //post of lost pets  
// getMissingPet,
    //post of found pets
// getFoundPet,
    //post new lost pets
// postMissingPet,
    //post new found pets
// postFoundPet,
    //search by information of found pet
// post
    //search by information of lost pet
// post
    // changes of find/lost pet
// put
    //update user
// put
    //delete post by id
// delete
// }