#!/bin/bash

# nao esquecer de dar permissao chmod +x compile.sh
# 1. DEFINIÇÃO DE VARIÁVEIS
PROJETO="j2me-starter"
LIBS="./libs/midpapi20-2.0.4.jar:./libs/cldcapi11-2.0.3.jar"

echo "🚀 Iniciando Processo de Build..."

# 2. LIMPEZA DA PASTA BUILD
rm -rf build/*
mkdir -p build/META-INF

# 3. COMPILAÇÃO (Lê da src e joga o resultado na build)
javac -bootclasspath "$LIBS" -source 1.8 -target 1.8 -d build src/*.java

if [ $? -eq 0 ]; then
    echo "✅ Compilação bem-sucedida!"

    # 4. PREPARAÇÃO DO MANIFESTO
    # Copia o seu manifest.mf para o local correto dentro da build
    cp manifest.mf build/META-INF/MANIFEST.MF

    # 5. EMPACOTAMENTO (Cria o JAR dentro da pasta build)
    cd build
    zip -r "$PROJETO.jar" . -x "META-INF/*" # Adiciona os .class
    zip -u "$PROJETO.jar" META-INF/MANIFEST.MF # Garante o Manifesto
    
    echo "📦 Arquivo gerado: build/$PROJETO.jar"
    cd ..
else
    echo "❌ Erro na compilação. Verifique o código em src/."
fi

