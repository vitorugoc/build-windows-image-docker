# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Defina o diretório de trabalho
WORKDIR /app

# Copie o instalador do SDK do .NET Framework 4.6.1 do repositório
COPY installer/dotnet-sdk-installer.exe .

# Instale o SDK do .NET Framework 4.6.1
RUN dotnet-sdk-installer.exe /q

# Adicione o caminho do executável do .NET Framework ao PATH do sistema
RUN setx /M PATH $($Env:PATH + ';C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools')

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Limpeza - exclua o instalador após a instalação estar completa
RUN del dotnet-sdk-installer.exe

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
