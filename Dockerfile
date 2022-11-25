FROM node:19-alpine3.15
# Uses the node base image with the latest LTS version
# FROM node:14.16.0
# Informs Docker that the container listens on the 
# specified network ports at runtime
EXPOSE 4022
# Copies index.js and the two package files from the local 
# directory to a new app directory on the container
COPY index.js package.json package-lock.json  app/
# Changes working directory to the new directory just created
WORKDIR /app
# Installs npm dependencies on container
RUN npm install
# Command container will actually run when called
CMD ["node", "index.js"]