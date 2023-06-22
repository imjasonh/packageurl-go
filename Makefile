.PHONY: test clean lint

test:
	go test -v -cover ./...

fuzz:
	go test -fuzztime=1m -fuzz .

clean:
	find . -name "test-suite-data.json" | xargs rm -f

lint:
	go get -u golang.org/x/lint/golint
	golint -set_exit_status
