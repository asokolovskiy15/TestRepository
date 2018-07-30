FROM node:8

# Создать директорию app
WORKDIR /usr/src/app

# Установить зависимости приложения
# Используется символ подстановки для копирования как package.json, так и package-lock.json,
# работает с npm@5+
COPY package*.json ./

RUN npm install
RUN pwd
RUN ./bootstart.sh
# Используется при сборке кода в продакшене
# RUN npm install --only=production
# Скопировать исходники приложения
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
