const mysql = require('mysql2')
const pool = require('../sql/connections')
const { handleSQLError } = require('../sql/error')

const getMissingPet = (req, res) => {
    pool.query("SELECT * FROM  petMissing", (err, rows) => {
      if (err) return handleSQLError(res, err)
      return res.json(rows);
    })
  }

module.exports = {
    getMissingPet
  }