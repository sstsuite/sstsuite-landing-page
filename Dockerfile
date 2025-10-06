# syntax=docker/dockerfile:1

# Etapa de build: compila a app Vue com Vite
FROM node:18-alpine AS builder
WORKDIR /app

# Copiar apenas manifestos para instalar deps de forma cacheável
COPY package*.json ./
RUN npm ci --legacy-peer-deps

# Copiar código e construir
COPY . .
RUN npm run build

# Etapa de runtime: servir estáticos com Nginx
FROM nginx:alpine AS runner

# Configuração Nginx para SPA (fallback para index.html)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar artefatos construídos
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]