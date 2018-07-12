FROM microsoft/dotnet:2.0-sdk
WORKDIR /app
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/asokolovskiy15/DockerBuild


# copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# copy and build everything else
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/DockerCore.dll"]
