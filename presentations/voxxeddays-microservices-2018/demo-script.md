## TODO BEFORE TALK

Build and install pres package

Set package name to http-echo-vdms2018 and publish version 0.1.0 to stable channel

Run a supervisor on host + ff vdms2018 profile + 3 ready to use docker terminals.
Create a studio and build http-echo at least once + docker export

## Present app

Simple spring boot app showing configurable text

mvn clean install
mvn spring-boot:run at http://localhost:8080

## Build and run hab package first

hab studio enter
build
source result/last_build.env
hab pkg upload results/$pkg_artifact

Show BLDR a bit and promote to stable (ASAP)

Launch:
hab pkg export docker rsertelon/http-echo-vdms2018

## Present habitat code during export

switch to vscode

plan.sh: metadata + build phases
config: show app config, and how default.toml + template work
hooks/run: show how the command is launched

## Present conf management

show end of export and quit term.
switch to prepared term for docker demo

docker run -it -p 8081:8080 rsertelon/http-echo --peer 172.17.0.1 --strategy=rolling
docker run -it -p 8082:8080 rsertelon/http-echo --peer 172.17.0.1 --strategy=rolling
docker run -it -p 8083:8080 rsertelon/http-echo --peer 172.17.0.1 --strategy=rolling

sudo hab config apply http-echo.default $(date +%s) <<< 'text="Hello, VoxxedDays Microservices!"'

## Show update management

Change version in plan and pom to 0.2.0

build and upload new version, see docker output and show version in tabs.