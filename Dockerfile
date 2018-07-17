FROM microsoft/dotnet:2.0-sdk
WORKDIR /app

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/asokolovskiy15/DockerBuild

# copy csproj and restore as distinct layers
COPY MyTestClass/MyTestClass/*.csproj MyTestClass/MyTestClass/./
RUN dotnet restore

# copy and build everything else
COPY MyTestClass/MyTestClass/. MyTestClass/MyTestClass/./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/DockerCore.dll"]
