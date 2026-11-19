FROM node:22-alpine

RUN npm install -g skillry-cli@0.2.2

ENTRYPOINT ["skillry-cli", "mcp"]
