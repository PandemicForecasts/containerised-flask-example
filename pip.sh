#!/bin/bash

COMMAND="$1"
shift

if [ $COMMAND = "install" ]; then
  docker exec pf_backend_pf_backend_1 pip install "$@"
elif [ $COMMAND = "uninstall" ]; then
  docker exec pf_backend_pf_backend_1 pip uninstall -y "$@"
fi

docker exec pf_backend_pf_backend_1 pip freeze > requirements.txt
