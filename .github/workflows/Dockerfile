# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Defina o diretório de trabalho
WORKDIR /app

# Copie o instalador do SDK do .NET Framework 4.6.1 para o diretório de trabalho
COPY dotnet-sdk-installer.exe .

# Instale o SDK do .NET Framework 4.6.1
RUN Start-Process -FilePath .\dotnet-sdk-installer.exe -ArgumentList '/q' -PassThru | Wait-Process

# Exclua o instalador após a instalação estar completa
RUN Remove-Item dotnet-sdk-installer.exe

# Adicione o caminho do executável do .NET Framework ao PATH do sistema
RUN setx /M PATH $($Env:PATH + ';C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools')

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
