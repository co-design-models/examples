all:

clean:


image=$(DOCKER_REGISTRY)/$(DOCKER_TARGET_ORG)/$(DOCKER_REPO_PREFIX)zuper-mcdp-deploy:$(Z_DISTRO)
test:

	docker run  -v $(PWD):$(PWD) -w $(PWD) --rm -i "$(image)" bash < test-in-docker.sh
