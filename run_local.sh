#!/usr/bin/bash

trap ctrl_c INT
function ctrl_c() {
    echo "STOPPING EVERYTHING"
    kill $SERVER $FRONTEND $MANAGER_BACKEND $MANAGER_FRONTEND
}

HTTPSERVER=${1:-localhost:3000}
BOTSERVER=${2:-localhost:8080}

# Setup the main server
cd pw3-moz2
cargo run --bin server &
SERVER=$!
sleep 1
cd ..

# Setup the front end for the main server
cd pw3-frontend
npm run dev &
FRONTEND=$!
sleep 1
cd ..

# Setup the local botmanager
cd pw3-bot-manager
cd backend
npm start $HTTPSERVER $BOTSERVER &
MANAGER_BACKEND=$!
cd ..
npm run dev &
MANAGER_FRONTEND=$!

# trap "" INT
wait $SERVER $FRONTEND $MANAGER_BACKEND $MANAGER_FRONTEND
