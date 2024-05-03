#!/bin/bash

# Defina as URLs de download
APKTOOL_URL="https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
APKTOOL_JAR_URL="https://github.com/iBotPeaches/Apktool/releases/download/v2.6.0/apktool_2.6.0.jar"
JDK_URL="https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz"  # Substitua pelo URL direto do JDK

# Baixe o apktool, apktool.jar e JDK
sudo curl -o /usr/local/bin/apktool $APKTOOL_URL
sudo curl -o /usr/local/bin/apktool.jar $APKTOOL_JAR_URL
sudo curl -o jdk.tar.gz "$JDK_URL"

# Extraia o JDK
sudo tar -xvzf jdk.tar.gz -C /usr/local/bin/

# Defina o JDK_HOME
export JDK_HOME=$(find /usr/local/bin/ -type d -name "jdk-*" | head -n 1)
echo "export JDK_HOME=$JDK_HOME" | sudo tee -a /etc/profile
source /etc/profile

# Configure as variáveis de ambiente
sudo update-alternatives --install /usr/bin/java java $JDK_HOME/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac $JDK_HOME/bin/javac 1

# Instale as dependências necessárias
sudo apt install zipalign -y

# Dê permissões de execução
sudo chmod +x /usr/local/bin/apktool

# Mensagem de conclusão
echo "Apktool, apktool.jar e JDK foram baixados, extraídos e configurados em /usr/local/bin"
