const jwksRsa = require('jwks-rsa');
// const jwt = require('express-jwt');
const { expressjwt: jwt } = require("express-jwt");
// fixes the error for jwt not a function

const logger = (req, res, next) => {
  // output route, path and time
  console.log('Logging route:', req.path, new Date().toISOString());
  // continue
  next()
}

const checkJwt = jwt({
  secret: jwksRsa.expressJwtSecret({
    cache: true,
    rateLimit: true,
    jwksRequestsPerMinute: 5,
    jwksUri: `https://${process.env.AUTH0_DOMAIN}/.well-known/jwks.json`
  }),
  // Validate the audience and the issuer.
  audience: process.env.AUTH0_IDENTITY,
  issuer: `https://${process.env.AUTH0_DOMAIN}/`,
  algorithms: ['RS256']
});

module.exports = {
  logger,
  checkJwt
}