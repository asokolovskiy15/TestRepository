FROM node:8
# Создать директорию app
WORKDIR /user
RUN ls
# Установить зависимости приложения
# Используется символ подстановки для копирования как package.json, так и package-lock.json,
# работает с npm@5+
COPY package.json ./
RUN ls
#RUN npm install
# Используется при сборке кода в продакшене
# RUN npm install --only=production
# Скопировать исходники приложения
COPY . .
RUN chmod +x ./bootstart.sh
RUN ls
RUN ./bootstart.sh

EXPOSE 8080
CMD [ "npm", "start" ]
