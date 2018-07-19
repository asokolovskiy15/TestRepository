FROM microsoft/dotnet-framework:3.5
WORKDIR /app


# copy csproj and restore as distinct layers
COPY {0}*.csproj ./
RUN dotnet restore

# copy and build everything else
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/d.dll"]
