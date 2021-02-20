#!/usr/bin/sh

cd pw3-moz2
cargo build # not build on run, these ws should be running before the rest
cd ../

cd pw3-frontend
npm install
cd ../

cd pw3-bot-manager
npm install
cd backend
npm install
