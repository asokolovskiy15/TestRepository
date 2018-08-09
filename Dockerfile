FROM microsoft/windowsservercore
WORKDIR /usr/src/app

COPY . .
RUN dir
RUN powershell -command "& './CheckProject.ps1'"




