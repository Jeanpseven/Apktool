#!/bin/bash

# Defina as URLs de download
APKTOOL_URL="https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
APKTOOL_JAR_URL="https://github.com/iBotPeaches/Apktool/releases/download/v2.6.0/apktool_2.6.0.jar"

# Baixe o apktool e apktool.jar
sudo curl -o /usr/local/bin/apktool $APKTOOL_URL
sudo curl -o /usr/local/bin/apktool.jar $APKTOOL_JAR_URL

# Dê permissões de execução
sudo chmod +x /usr/local/bin/apktool

# Mensagem de conclusão
echo "Apktool e apktool.jar foram baixados e colocados em /usr/local/bin"
