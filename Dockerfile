FROM ubuntu

# Install dependencies & add Azul OpenJDK 21 repo
RUN apt-get update && apt-get upgrade -y && apt-get install -y gnupg curl git
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get update && apt-get install -y openjdk-21-jdk maven yarn nodejs
RUN npm install -g npm@11.4.2
RUN npm install -g corepack

ENTRYPOINT ["/bin/bash"]
