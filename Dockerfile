FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copiar csproj e restaurar dependencias
COPY ./SlaveCare.Api/*.csproj ./SlaveCare.Api/
COPY ./SlaveCare.Api.UnitTests/*.csproj ./SlaveCare.Api.UnitTests/
COPY ./SlaveCare.Api.IntegrationTests/*.csproj ./SlaveCare.Api.IntegrationTests/
COPY ./SlaveCare.Domain/*.csproj ./SlaveCare.Domain/
COPY ./SlaveCare.Infra.Data/*.csproj ./SlaveCare.Infra.Data/
COPY ./SlaveCare.Service/*.csproj ./SlaveCare.Service/
COPY ./SlaveCare.Integration/*.csproj ./SlaveCare.Integration/
COPY ./*.sln ./

RUN dotnet restore

# Build da aplicacao
COPY . ./
RUN dotnet publish -c Release

# Build da imagem
#dev raspberry
#FROM mcr.microsoft.com/dotnet/aspnet:8.0.0-alpine3.17-arm64v8
#prod
FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app
COPY --from=build-env /app/SlaveCare.Api/bin/Release/net8.0/publish .

EXPOSE 80
CMD ASPNETCORE_URLS=http://*:$PORT dotnet SlaveCare.Api.dll
