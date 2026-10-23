FROM node:22.19.0-bookworm-slim
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=10000
COPY xcom-release.tar.gz ./
RUN tar -xzf xcom-release.tar.gz standalone-dist && rm xcom-release.tar.gz && chown -R node:node /app
USER node
EXPOSE 10000
CMD ["node", "standalone-dist/server/index.mjs"]
