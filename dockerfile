FROM node:16-alpine  

WORKDIR /app  # Set the working directory inside the container

COPY package*.json ./  
RUN npm install  # Install Node.js dependencies

COPY . .  

EXPOSE 80  

CMD ["node", "src/index.js"]  # Start your Express application