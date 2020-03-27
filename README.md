# Containerised Flask App Template
Template for a containerised Flask app served by Gunicorn. By containerising the app, development is consistent both between
developers, and between development and production.

This template requires [Docker](https://www.docker.com/get-starte) and [docker-compose](https://docs.docker.com/compose/install/) to be installed.

To start build and start the container, run `./up.sh` (Windows users will need to install a linux-friendly terminal such as git bash
or simply copy the commands from the file into their terminal and run them).

The app will now be available at `localhost:8000`.

To install or remove python packages, run `./pip.sh install somepackage` (or the same with `remove`). This installs packages
in the container and saves a record of them in the `requirements.txt`, which can be committed to git. This way, packages
are consistent between devs.
