FROM node:14

COPY ["package.json","package-lock.json","/usr/src/"]

WORKDIR /usr/src

RUN npm install
# copia lo que cmabia de node
COPY ["*.js", "/usr/src/"]

EXPOSE 3000
CMD ["node", "index.js"]  inicial
# nodemon cada cambio rebuild
#CMD ["npx","nodemon","index.js"]
