# this actually starts the application
# todo add source folder as cmd arg

srcfolder=~/projects/git/websocket-stomp-dynamic-messaging/ 

docker run -it --rm -v $srcfolder:/app java/java8-mvn mvn spring-boot:run
