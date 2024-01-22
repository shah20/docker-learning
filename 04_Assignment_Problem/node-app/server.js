const express = require('express');

const app = express();

app.get('/', (req, res) => {
  console.log('Hello from inside the server!');
  res.send(`
    <h1>Hello from inside the very basic Node app!</h1>
  `);
})

console.log('Server is listening on port 3000...');
app.listen(3000);