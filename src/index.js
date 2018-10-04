// import express from 'express'
const express = require('express')


const app = express()
const port = 3000

app.get('/', (req, res) => {
    let msg = `Hello World<br>I'm running on [${process.env.NODE_ENV}] environment`
    res.send(msg)
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}!`)
    console.log(`This process is running on [${process.env.NODE_ENV}] environment`)
})