#!/usr/bin/sh

trap ctrl_c INT
function ctrl_c() {
    echo "STOPPING EVERYTHING"
    kill $MANAGER_BACKEND $MANAGER_FRONTEND
}

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 HTTPSERVER BOTSERVER" >&2
  exit 1
fi

HTTPSERVER=$1
BOTSERVER=$2

# Setup the local botmanager
cd pw3-bot-manager
cd backend
npm start $HTTPSERVER $BOTSERVER &
MANAGER_BACKEND=$!
cd ..
npm run dev &
MANAGER_FRONTEND=$!

# trap "" INT
wait $MANAGER_BACKEND $MANAGER_FRONTEND
