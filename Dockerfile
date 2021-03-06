FROM microsoft/aspnetcore-build:latest
ADD VERSION .

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb http://download.mono-project.com/repo/debian jessie main" | tee /etc/apt/sources.list.d/mono-official.list && \
    apt-get update && \
    apt-get install --yes \
    curl \
    wget \
    zip \
    unzip \
    mono-complete

RUN npm install -g yarn
