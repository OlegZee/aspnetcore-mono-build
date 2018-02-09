# SET THE FOLLOWING VARIABLES
# docker hub username
set USERNAME=olegz
# image name
set IMAGE=aspnetcore-mono-build
set VERSION=0.1.0

echo %VERSION% > VERSION
docker build -t %USERNAME%/%IMAGE%:latest .

docker tag %USERNAME%/%IMAGE%:latest %USERNAME%/%IMAGE%:%VERSION%