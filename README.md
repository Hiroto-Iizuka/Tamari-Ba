## Tamari-Ba

## 開発環境構築手順

### インフラ構成図
![Tamari-Baインフラ構成図](https://user-images.githubusercontent.com/69702983/130316526-ebb7cafd-59a0-4524-9066-e8f7db9ed590.png)

- docker images
  - tamari-ba
    - Ruby: 2.7.2 (Nginx, Puma, Supervisor)
  - mysql
    - MySQL: 5.7


- git clone

```
$ mkdir -p ~/git/github
$ git clone git@github.com:Hiroto-Iizuka/Tamari-Ba.git
```

- add localhost /etc/hosts

```
$ sudo vi /etc/hosts

以下に修正
127.0.0.1 dev.rider-no-tamari-ba.com
```

- 環境変数

```
$ cd ~/git/github/Tamari-Ba
$ cp .env.sample .env
```

- docker run

```
$ cd docker/dev
$ docker-compose up -d
```

- app deploy

```
$ docker exec -it tamariba-app bash

$ yarn install
$ bundle install
$ rails db:migrate
$ /usr/bin/supervisorctl restart app
```

- Access

![スクリーンショット 2021-08-21 18 06 42](https://user-images.githubusercontent.com/69702983/130316882-9967a47d-d874-4de8-8ada-43b28f9fbf9e.png)

http://dev.rider-no-tamari-ba.com/

- DB login

```
docker exec -it tamariba-app bash
mysql -u root -h db -p
```