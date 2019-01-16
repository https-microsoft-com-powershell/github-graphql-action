FROM node:10-slim

LABEL "com.github.actions.name"="GraphQL query"
LABEL "com.github.actions.description"="An action which executes GraphQL queries"
LABEL "com.github.actions.icon"="database"
LABEL "com.github.actions.color"="purple"

LABEL version="1.0.0"
LABEL repository="https://github.com/helaili/graphql-action"
LABEL homepage="https://github.com/helaili/graphql-action"
LABEL maintainer="Alain Hélaïli <helaili@github.com>"

ADD package.json /package.json
ADD package-lock.json /package-lock.json
WORKDIR /

RUN npm ci

COPY . /

ENTRYPOINT ["node", "/entrypoint.js"]