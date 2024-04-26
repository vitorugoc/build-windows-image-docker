# Use a imagem oficial do Windows Server Core como base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Defina o diretório de trabalho
WORKDIR /app

# Instale o Chocolatey
RUN powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

# Instale o SDK do .NET Framework 4.6.1 usando o Chocolatey
RUN choco install dotnet4.6.1 -y

# Adicione o caminho do executável do .NET Framework ao PATH do sistema
RUN setx /M PATH $($Env:PATH + ';C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools')

# Verifique se o SDK foi instalado corretamente
RUN dotnet --version

# Defina um ponto de entrada padrão (opcional)
CMD ["cmd"]
