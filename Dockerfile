# Используем официальный образ Node.js
FROM node:18

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /front

# Клонируем репозиторий
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/cossack-don/infrastructure-front.git /front

# Устанавливаем зависимости
RUN npm ci

# Собираем приложение
RUN npm run build

# Открываем порт, который будет использовать Nuxt.js
EXPOSE 3000

# Запускаем приложение в production-режиме
CMD ["npm", "run", "preview"]