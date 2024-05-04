# Dockerfile

# Use a imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos da aplicação para o contêiner
COPY . /app

# Instale as dependências da aplicação e a ferramenta Bandit para testes de segurança
RUN pip install --no-cache-dir Flask \
    && pip install --no-cache-dir bandit

# Exponha a porta em que a aplicação será executada
EXPOSE 5000

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]
