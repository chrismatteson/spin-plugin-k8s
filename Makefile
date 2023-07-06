SHA256=$(shell shasum -a 256 k8s.tar.gz | cut -f 1 -w)

.PHONY: all
all: k8s.local.json k8s.json k8s.tar.gz

.PHONY: clean
clean:
	rm k8s.local.json
	rm k8s.tar.gz

k8s.local.json: k8s.tar.gz
	@jq '.packages[].sha256 = "$(SHA256)" | .packages[].url = "file://$(shell realpath k8s.tar.gz)"' k8s.json > k8s.local.json

k8s.json: k8s.tar.gz
	@cp k8s.json k8s.json.temp
	@jq '.packages[].sha256 = "$(SHA256)"' k8s.json.temp > k8s.json
	@rm k8s.json.temp

k8s.tar.gz: k8s
	tar czvf k8s.tar.gz k8s

.PHONY: install-local
install-local: k8s.local.json
	@spin plugin uninstall k8s
	@spin plugin install -y -f ./k8s.local.json
