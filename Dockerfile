# Используем официальный образ Node.js
FROM node:18

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app-front

# Копируем package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем все файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Открываем порт, который будет использовать Nuxt.js
EXPOSE 3000

# Запускаем приложение
CMD ["npm", "run", "preview"]