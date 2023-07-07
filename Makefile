
init:
	go mod init github.com/ahfuzhang/http_https_4_layer_proxy

build:
	go build

run: build
	./http_https_4_layer_proxy 	

test:
	# https
	curl --proxy "http://127.0.0.1:8080" "https://www.baidu.com/" -v
	# http
	curl --proxy "http://127.0.0.1:8080" http://127.0.0.1:8081/metrics -v
	