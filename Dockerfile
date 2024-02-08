FROM mcr.microsoft.com/dotnet/sdk:8.0 as build

WORKDIR /app
COPY . .
RUN dotnet publish -c Release -o out

WORKDIR /app/out

CMD ["dotnet", "out/web.dll"]