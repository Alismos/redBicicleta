const mongoose = require("mongoose");

mongoose
    .connect("mongodb://mongodb:27017/expresscart")
    .then((db) => console.log("Db is connected to", db.connection.host))
    .catch((err) => console.error(err));