ar express = require('express') 
var app = express() 

app.get('/', function (req, res) {
  res.send('Hello Welcome to Airbus')
})


app.listen(8081, function () {
  console.log('Airbus is listening 8081 port')
})

