#!/bin/bash

# Baixe e instale o SDK do .NET Framework 4.6.1
wget -q https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/NDP461-KB3102436-x86-x64-AllOS-ENU.exe -O dotnet-sdk-installer.exe
./dotnet-sdk-installer.exe /q
rm dotnet-sdk-installer.exe
