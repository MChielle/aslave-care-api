FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR /app

# Copiar csproj e restaurar dependencias
COPY ./Appointment.Api/*.csproj ./Appointment.Api/
COPY ./Appointment.Api.UnitTests/*.csproj ./Appointment.Api.UnitTests/
COPY ./Appointment.Api.IntegrationTests/*.csproj ./Appointment.Api.IntegrationTests/
COPY ./Appointment.Domain/*.csproj ./Appointment.Domain/
COPY ./Appointment.Infra.Data/*.csproj ./Appointment.Infra.Data/
COPY ./Appointment.Service/*.csproj ./Appointment.Service/
COPY ./Appointment.Integration/*.csproj ./Appointment.Integration/
COPY ./*.sln ./

RUN dotnet restore

# Build da aplicacao
COPY . ./
RUN dotnet publish -c Release

# Build da imagem
#dev raspberry
#FROM mcr.microsoft.com/dotnet/aspnet:6.0.14-alpine3.17-arm64v8
#prod
FROM mcr.microsoft.com/dotnet/aspnet:7.0

WORKDIR /app
COPY --from=build-env /app/Appointment.Api/bin/Release/net7.0/publish .

EXPOSE 80
CMD ASPNETCORE_URLS=http://*:$PORT dotnet Appointment.Api.dll
