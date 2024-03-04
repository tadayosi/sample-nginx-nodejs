import express from 'express'

const port = 3000

const router = express.Router()
router.get('/', (req, res) => {
  res.send('App')
})

router.get('/hello/:name', (req, res) => {
  const name = req.params.name
  res.send(`Hello ${name}!`)
})

const app = express()
app.use('/app', router)
app.listen(port, () => {
  console.log(`Listening on port ${port}`)
})
