build:
	docker build --force-rm -t cnjackhack/switch-lan-play-client:0.2.1 .

push:
	docker push cnjackhack/switch-lan-play-client:0.2.1