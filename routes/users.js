var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.send('He entrado a la funcion de users');
});

module.exports = router;