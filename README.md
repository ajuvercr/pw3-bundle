# pw3-bundle

## Requirements

node (it works with 14 and 15)
npm

rust (`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`)
wasm-pack (`curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh`)

## ./install.sh

Run this to install the npm packages required for communicating with a hosted pw3-moz2 server.

## ./install_local.sh

Run this to install the npm packages required for all local operation, preparing to host you're own pw3-moz2 server.


## ./run.sh
Run this to start local bot-manager, this will communicate with a hosted pw3-moz2 server.

```
./run.sh HTTPSERVER BOTSERVER
```

## ./run_local.sh
Run this to start up your local pw3-moz3 server + frontends.
