# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8

# Defina o diretório de trabalho
WORKDIR /app

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
