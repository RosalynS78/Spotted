const mysql = require('mysql2')
const pool = require('../sql/connections')
const { handleSQLError } = require('../sql/error')

const getMissingPets = (req, res) => {
    pool.query("SELECT * FROM  petsMissing", (err, rows) => {
      if (err) return handleSQLError(res, err)
      return res.json(rows);
    })
  }

  const createMissingPet = (req, res) => {
    const {petName, gender, age, photo, dateMissing, status} = req.body
    let sql = "INSERT INTO petsMissing (pet_name, gender, age, photo, lastseen_date, lost_status) VALUES ('?', '?', '?', '?', '?', 1)"
    sql = mysql.format(sql, [ petName, gender, age, photo, dateMissing, status ])
  
    pool.query(sql, (err, results) => {
      if (err) return handleSQLError(res, err)
      return res.json({newId: results.insertId});
    })
  }
  


module.exports = {
    getMissingPets,
    createMissingPet
}
     



  