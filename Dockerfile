FROM node:latest

# Create the bot's directory
RUN mkdir -p /data && \
    mkdir -p /git

WORKDIR /data
COPY . .

# Start the bot.
CMD ["node", "index.js"]