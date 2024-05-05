FROM node:18

# Instale as dependências do aplicativo
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install

# Crie a compilação do aplicativo
RUN yarn build

# Exponha a porta 3000
EXPOSE 3000

# Execute o aplicativo
CMD ["yarn", "start"]
