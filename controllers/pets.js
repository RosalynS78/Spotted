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

  const updatePetsById = (req, res) => {
    const { petName, gender, age, photo, dateMissing, status } = req.body
    let sql = "UPDATE pets SET pet_name = '?', gender = '?',  age = '?', photo = '?', lastseen_date = '?', lost_status = '?' WHERE pet_id = ?"
    sql = mysql.format(sql, [ petName, gender, age, photo, dateMissing, status , req.params.pet_id ])
  
    pool.query(sql, (err, results) => {
      if (err) return handleSQLError(res, err)
      return res.status(204).json();
    })
  }

  const deletePetsById = (req, res) => {
    let sql = "DELETE FROM pets WHERE pet_id = ?"
    sql = mysql.format(sql, [ req.params.pet_id ])
  
    pool.query(sql, (err, results) => {
      if (err) return handleSQLError(res, err)
      return res.json({ message: `Deleted ${results.affectedRows} pet(s)` });
    })
  }
  
module.exports = {
getAllPets,
getPetsById,
updatePetsById,
deletePetsById
}
    