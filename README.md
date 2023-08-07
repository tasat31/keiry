# keiry


## Features

Book keeping Application powerd by Tauri

- Front end: Vite
- Database : MySQL, SQLite

## Pre-required

- docker

## Get Started

### 1. Docker build

```
$ docker-compose build
$ docker-compose up -d
```

### 1. Run Docker Container

```
$ xhost +
```
* This is required to access host X11 from docker container

Caution: `xhost -` after working.

```
$ docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -v ${PWD}:/home/project keiry-tauri
```

### 2. .env の編集

(docker container)
```
# cd src-tauri
# echo DATABASE_URL=sqlite://var/lib/sqlite3/keiry_db > .env
```

### 3. Database Migration

- Use diesel to migrate, use sqlx to invoke query

```
# cd src-tauri
# diesel migration run
```


### 4. node packegeの導入

```
# yarn
```

### 5. 起動

```
# yarn tauri dev
```
