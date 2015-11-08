FROM node:slim
MAINTAINER Alex

# Install git, sudo
RUN apt-get -yq update && \
    apt-get -yq install git sudo && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Add a user
RUN adduser --disabled-password --gecos '' user && \
	adduser user sudo && \
  	echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# Set HOME
ENV HOME /home/user

# Install lib dependencies
RUN apt-get -yq update && \
    apt-get -yq install bzip2 libfreetype6 libfontconfig && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install apps
RUN npm install -g yo grunt-cli bower karma-cli \
		generator-karma generator-angular && \
	npm install phantomjs jasmine-core karma --save-dev \
		karma-phantomjs-launcher --save-dev karma-jasmine --save-dev && \
    rm -rf ~/.npm && npm cache clear

# Set app dir
RUN mkdir /app && chown user:user /app
WORKDIR /app

# Run as user
USER user

# Expose the port
EXPOSE 9000

# Open bash by default
CMD /bin/bash