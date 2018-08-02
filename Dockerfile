FROM node:8
# Создать директорию app
WORKDIR /usr/src/app
# Установить зависимости приложения
# Используется символ подстановки для копирования как package.json, так и package-lock.json,
# работает с npm@5+
RUN ls
COPY . .
RUN ls
RUN npm install
# Используется при сборке кода в продакшене
# RUN npm install --only=production
# Скопировать исходники приложения
RUN ls
COPY . .
RUN chmod +x ./bootstart.sh
RUN ./bootstart.sh

RUN ls
EXPOSE 8080
CMD [ "npm", "start" ]
