# Sleeper testing container

This is testing container.

It expects `SECRET_KEY`, `SLEEP_TIME`, and `HOST_NAME` variables.


- `SECRET_KEY` variable should be `topsecretstring`.
- `SLEEP_TIME` reflect how many seconds execution will take (integer).
- `HOST_NAME` is the ping target (can be localhost).


`docker run --env SECRET_KEY=topsecretstring --env SLEEP_TIME=1 --env HOST_NAME=google.com sleeper`