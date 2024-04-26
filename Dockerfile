# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/dotnet/framework/sdk:4.6.1

# Defina o diretório de trabalho
WORKDIR /app

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Limpeza - exclua o instalador após a instalação estar completa
RUN del dotnet-sdk-installer.exe

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
