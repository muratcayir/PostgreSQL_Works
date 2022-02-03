const express = require("express")
const postgresClient = require("./config/db")

const app = express()
app.use(express.json())

const PORT=process.env.PORT || 8080

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`)
    postgresClient.connect(err => {
        if(err) {
            console.log('connection error', err.stack)
        }else {
            console.log('db connection successful')
        }
    })
})