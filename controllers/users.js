const mysql = require('mysql2')
const pool = require('../sql/connections')
const { handleSQLError } = require('../sql/error')

const getAllUsers = (req, res) => {
  pool.query("SELECT * FROM users", (err, rows) => {
    if (err) return handleSQLError(res, err)
    return res.json(rows);
  })
}

const getUserById = (req, res) => {
  let sql = "SELECT * FROM users WHERE id = ?"
  sql = mysql.format(sql, [ req.params.id ])

  pool.query(sql, (err, rows) => {
    if (err) return handleSQLError(res, err)
    return res.json(rows);
  })
}

const createUser = (req, res) => {
  const { firstName, lastName } = req.body
  let sql = "INSERT INTO users (first_name, last_name) VALUES (?, ?)"
  sql = mysql.format(sql, [ firstName, lastName ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.json({ newId: results.insertId });
  })
}
const getUserContact = (req, res) => {
  pool.query("SELECT * FROM userscontact", (err, rows) => {
    if (err) return handleSQLError(res, err)
    return res.json(rows);
  })
}

const createUserContact = (req, res) => {
  const { email, phone } = req.body
  let sql = "INSERT INTO userscontact (email, phone) VALUES (?, ?)"
  sql = mysql.format(sql, [ email, phone ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.json({ newId: results.insertId });
  })
}

const createUserLocation = (req, res) => {
  const { city, state, zip } = req.body
  let sql = "INSERT INTO userslocation (city, state, zip) VALUES (?, ?, ?)"
  sql = mysql.format(sql, [ firstName, lastName ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.json({ newId: results.insertId });
  })
}

const updateUserById = (req, res) => {
  const { firstName, lastName } = req.body
  let sql = "UPDATE users SET first_name = ?, last_name = ? WHERE id = ?"
  sql = mysql.format(sql, [ firstName, lastName, req.params.id ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.status(204).json();
  })
}
const updateUserContact = (req, res) => {
  const { email, phone } = req.body
  let sql = "UPDATE users SET email = ?, phone = ? WHERE id = ?"
  sql = mysql.format(sql, [ email, phone, req.params.id ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.status(204).json();
  })
}

const updateUserLocation = (req, res) => {
  const { city, state, zip } = req.body
  let sql = "UPDATE users SET city = ?, state = ? zip = ? WHERE id = ?"
  sql = mysql.format(sql, [ city, state, zip, req.params.id ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.status(204).json();
  })
}

const deleteUserById = (req, res) => {
  let sql = "DELETE FROM users WHERE id = ?"
  sql = mysql2.format(sql, [ req.params.first_name ])

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err)
    return res.json({ message: `Deleted ${results.affectedRows} user(s)` });
  })
}

module.exports = {
  getAllUsers,
  getUserById,
  createUser,
  getUserContact,
  createUserContact,
  createUserLocation,
  updateUserById,
  updateUserContact,
  updateUserLocation,
  deleteUserById
}