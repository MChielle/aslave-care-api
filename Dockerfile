FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copiar csproj e restaurar dependencias
COPY ./AslaveCare.Api/*.csproj ./AslaveCare.Api/
COPY ./AslaveCare.UnitTests/*.csproj ./AslaveCare.UnitTests/
COPY ./AslaveCare.IntegrationTests/*.csproj ./AslaveCare.IntegrationTests/
COPY ./AslaveCare.Domain/*.csproj ./AslaveCare.Domain/
COPY ./AslaveCare.Infra.Data/*.csproj ./AslaveCare.Infra.Data/
COPY ./AslaveCare.Service/*.csproj ./AslaveCare.Service/
COPY ./AslaveCare.Integration/*.csproj ./AslaveCare.Integration/
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
COPY --from=build-env /app/AslaveCare.Api/bin/Release/net8.0/publish .

EXPOSE 80
CMD ASPNETCORE_URLS=http://*:$PORT dotnet AslaveCare.Api.dll
