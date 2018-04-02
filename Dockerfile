ARG REGISTRY_NAME=jengademos5.azurecr.io/
FROM ${REGISTRY_NAME}corpimages/node:9
#FROM jengademos.azurecr.io/baseimages/node:9
# sha256:22c9c33b482a3c3e0d2c9850285fe3942662c3324da918a9c20325630e553c31
COPY . /src
RUN cd /src && npm install
EXPOSE 5000
CMD ["node", "/src/server.js"]
