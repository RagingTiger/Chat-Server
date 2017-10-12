# using Node.js base image
FROM node

# updating linux
RUN apt-get update

# setting working dir
WORKDIR /home/Chat-Server

# copy source to workdir
COPY . .

# install 
RUN npm install

# change workdir
WORKDIR /home/Chat-Server/public/js

# start server on container run
CMD ["npm", "start"]
