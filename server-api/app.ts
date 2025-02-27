// import express from 'express'
// import { fromNodeMiddleware } from 'h3' // Импортируем fromNodeMiddleware
//
// const app = express()
//
// app.use(express.json())
//
// app.get('/server-api/test', (req, res) => {
//     // res.setHeader('Content-Type', 'application/json') // Устанавливаем заголовок
//     console.log('Request headers:', req.headers) // Логирование заголовков
//
//     res.json({ message: 'HELLO from Express in Nuxt 3! SSR' })
// })
//
// // Экспортируем Express как middleware для Nitro
// export default fromNodeMiddleware(app)
