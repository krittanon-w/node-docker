# node-docker

if you are in local development you can run this cmd
- `npm run dev`
- `npm run prod`
- `npm run start` it will run node in env depend on terminal env session you have
- `NODE_ENV="production" npm start` and `NODE_ENV="development" npm start` if you want to specifi or inject env and then run with `npm start` or `npm run start`

you can run this exm using Docker in two ways
- `./up-dirty.sh` for development env
- `./up-dirty.sh -prod` for production env

you can try this by go to `localhost:3000` or `127.0.0.1:3000` depend on your host, you will get the result like this
```text
Hello World
I'm running on [development] environment
```
