FROM microsoft/windowsservercore
WORKDIR /usr/src/app

COPY . .
RUN ls

RUN ./CheckProject.ps1





