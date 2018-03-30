ARG REGISTRY_NAME
FROM ${REGISTRY_NAME}corpimages/node:9
COPY . /src
RUN cd /src && npm install
EXPOSE 5000
CMD ["node", "/src/server.js"]
