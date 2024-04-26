# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Defina o diretório de trabalho
WORKDIR /app

# Copie o script de instalação do .NET Framework
COPY install_dotnet.sh .

# Execute o script de instalação do .NET Framework
RUN powershell -Command ./install_dotnet.sh

# Adicione o caminho do executável do .NET Framework ao PATH do sistema
RUN setx /M PATH $($Env:PATH + ';C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools')

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
