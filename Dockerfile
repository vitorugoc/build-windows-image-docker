# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Defina o diretório de trabalho
WORKDIR /app

# Baixe e instale o SDK do .NET Framework 4.6.1
RUN Invoke-WebRequest -Uri https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/NDP461-KB3102436-x86-x64-AllOS-ENU.exe -OutFile dotnet-sdk-installer.exe ; `
    Start-Process -FilePath .\dotnet-sdk-installer.exe -ArgumentList '/q' -PassThru | Wait-Process; `
    Remove-Item dotnet-sdk-installer.exe -Force

# Adicione o caminho do executável do .NET Framework ao PATH do sistema
RUN setx /M PATH $($Env:PATH + ';C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools')

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
