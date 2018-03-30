ARG REGISTRY_NAME=jengademos5.azurecr.io/
FROM ${REGISTRY_NAME}/corpimages/node:9
COPY . /src
RUN cd /src && npm install
EXPOSE 5000
CMD ["node", "/src/server.js"]
