# Apache SVN Server

## Requirements

First make sure *Docker* and *Docker Compose* are installed on the machine with:

    $ docker -v
    $ docker-compose -v

If they are missing, follow the instructions on the official website (they are not hard really...):

- [Docker CE Install How-to](https://docs.docker.com/engine/installation/)
- [Docker Compose Install How-to](https://docs.docker.com/compose/install/)

---

## Download Me!

Take this source from git repository with the following commands:

    $ git clone https://github.com/sangahco/sphinx-manual.git
    $ cd sphinx-manual
    $ git submodule init
    $ git submodule update

---

## How to Use

### Run the server:

    $ docker-compose up


### Create a new user:

    $ docker-compose -f docker-compose-htpasswd.yml run htpasswd [user] [password]

## Versioning

We use *Hasta la vista, baby* for versioning, that means, we do as we please.

## Authors
<!--
* **Emanuele Disco** - [Emanuele Disco](https://github.com/emawind84)
-->
* **SangAh Solution Team**

## License

This project is licensed under the Apache License - see the [LICENSE.md](LICENSE.md) file for details