all:
	cd go/src/cmd/compile/internal/base; cp print.go print_.go
	patch -p0 < print.patch
	rm go/src/cmd/compile/internal/base/print_.go

	cd go/src; bash make.bash

bin:
	sudo cp go/bin/go /bin/wgo
	sudo cp go/bin/gofmt /bin/wgofmt

test:
	go run test.go
	wgo run test.go

clean:
	rm -rf go

.PHONY: all bin test clean
