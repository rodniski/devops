# Dockerfile

# Use uma imagem base do Python
FROM python:3.9-slim

# Copie os arquivos da aplicação para o contêiner
WORKDIR /app
COPY . /app

# Instale as dependências da aplicação
RUN pip install --no-cache-dir -r requirements.txt

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]
