const express = require('express');
const app = express()
const port = 8080

app.get('/', (req, res) => {
  connection.query(
    "select * from table1 limit 1", 
      (error, results) => {
        res.send("Hello " + results[0].username + "!  You are number " + results[0].some_number + "<br />"  + "Here is some text: " + results[0].some_text
      );
    }
  );
});


app.listen(port, () => console.log(`listening on port ${port}`));

const mysql = require('mysql');
const connection = mysql.createConnection({
  host:'host.docker.internal',
  user:'root',
  password:'password',
  database:'example'
});

connection.connect();
