FROM node:6
WORKDIR /build
RUN npm install -g bower
COPY . .
RUN chmod +x docker-entrypoint.sh
RUN npm install && bower install --allow-root
EXPOSE 8000

CMD ["./docker-entrypoint.sh"]