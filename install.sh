#!/usr/bin/bash

git submodule update --init --recursive

cd pw3-bot-manager
npm install
cd backend
npm install
