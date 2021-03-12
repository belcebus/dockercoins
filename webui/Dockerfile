FROM node:4-slim@sha256:b5ae41b735cad519ae32cd6eeafbc1191c2d8e9056baf421a17f1c666c2a3753
RUN npm install express && npm install redis
COPY files/ /files/
COPY webui.js /
ENTRYPOINT ["node"]
CMD ["webui.js"]
EXPOSE 8080
