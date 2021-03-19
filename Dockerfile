FROM node:7
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD node index.js

#EXPOSE 8081

FROM nginx
EXPOSE 8081
COPY --from=0 /app/build /usr/share/nginx/html
