const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('I am from server');
});

app.listen(3000, () => {
    console.log('I am listening port 3000')
})