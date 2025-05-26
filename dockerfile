FROM node:18-alpine
WORKDIR /tosin_adewumi_site
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7775
CMD ["npm", "start"]
ENV PORT=7775 
ENV HOST=0.0.0.0