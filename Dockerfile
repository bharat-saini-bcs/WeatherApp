FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source
RUN git clone https://github.com/bharat-saini-bcs/WeatherApp.git
WORKDIR /WeatherApp
RUN dotnet restore

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /WeatherApp
CMD ["dotnet","build"]
CMD ["dotnet","run"]