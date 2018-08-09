FROM microsoft/windowsservercore
WORKDIR /usr/src/app

COPY . .
RUN dir
RUN ./CheckProject.ps1





