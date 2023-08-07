# Run `make build-debian-bullseye-18` to build this image

FROM rust:bullseye

WORKDIR /var/lib/sqlite3
WORKDIR /home/project/keiry

# Install base utils
RUN apt-get update
RUN apt-get install -y \
  curl \
  psmisc

# Install Node.js
RUN curl -fsSL "https://deb.nodesource.com/setup_18.x" | bash -
RUN apt-get install -y nodejs

# Install Yarn
RUN corepack enable

# Install Tarpaulin
RUN cargo install cargo-tarpaulin

# Install Tauri dependencies
# https://tauri.app/v1/guides/getting-started/prerequisites#setting-up-linux
RUN apt-get install -y \
  libwebkit2gtk-4.0-dev \
  build-essential \
  curl \
  wget \
  libssl-dev \
  libgtk-3-dev \
  libayatana-appindicator3-dev \
  librsvg2-dev

# Install tauri-driver dependencies
RUN apt-get install -y \
  webkit2gtk-4.0-dev \
  webkit2gtk-driver \
  xvfb

# Install tauri-driver
# https://tauri.app/v1/guides/testing/webdriver/introduction#system-dependencies
RUN cargo install tauri-driver

# Install SQLite3
RUN apt install -y sqlite3 libsqlite3-0 libsqlite3-dev

# Install diesel_cli for sqlite only
RUN cargo install diesel_cli --no-default-features --features sqlite

CMD ["/bin/bash"]
