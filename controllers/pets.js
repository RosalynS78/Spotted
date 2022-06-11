const mysql = require('mysql2')
const pool = require('../sql/connections')
const { handleSQLError } = require('../sql/error')

const getAllPets = (req, res) => {
    pool.query("SELECT * FROM  pets", (err, rows) => {
      if (err) return handleSQLError(res, err)
      return res.json(rows);
    })
  }

  const getPetsById = (req, res) => {
    let sql = "SELECT * FROM pets WHERE pet_id = ?"
    sql = mysql.format(sql, [ req.params.pet_id ])
  
    pool.query(sql, (err, rows) => {
      if (err) return handleSQLError(res, err)
      return res.json(rows);
    })
  }





  
module.exports = {
getAllPets,
getPetsById

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
}