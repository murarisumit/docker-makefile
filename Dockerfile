IMAGE = "murarisumit/{{ project _name }}"
TAG = "latest"
CONTAINER = "{{ container_name }}"


build:
	docker build -t $(IMAGE):$(TAG) .

clean:
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)

exec:
	docker exec -it $(CONTAINER) bash

logs:
	docker logs $(CONTAINER)

run:
	docker run -p 8080:8080 --name $(CONTAINER) -d $(IMAGE):$(TAG)

push:
	docker push $(IMAGE)

