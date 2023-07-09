// imports from packages
const express = require('express');
const mongoose = require('mongoose');

// imports from other files
const authRouter = require('./routes/auth');;

// initialize
const PORT = 3000;
const app = express();
const DB = 'mongodb+srv://sahani:aved%400401@cluster0.eceeesq.mongodb.net/?retryWrites=true&w=majority';

// connections
mongoose.set('strictQuery', false);
mongoose.connect(DB).then(() => {
    console.log('Connected');
}).catch((e) => {
    console.log(e);
})

// middleware
app.use(express.json());
app.use(authRouter);

app.listen(PORT, function () {
    console.log(`connected at port ${PORT}`);
})


// CREATING AN API
// http://<youripaddress>/hello-world
// app.get('/jai-shree-ram', (_, res) => {
//     res.json({
//         RomRom: "Jai Shree Ram"
//     });
// });