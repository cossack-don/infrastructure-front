// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: true,
  compatibilityDate: '2024-11-01',
  devtools: { enabled: true },
  // nitro: {
  //   handlers: [
  //     {
  //       // method: 'all', // Обрабатываем все HTTP-методы
  //       handler: '~/server-api/app.ts', // Путь к вашему Express.js приложению
  //     },
  //   ],
  // },
})
