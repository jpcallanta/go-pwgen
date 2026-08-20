GO_FILES := main.go
BIN := ./build/go-pwgen

all: $(BIN)

$(BIN):
	go build -o $(BIN) $(GO_FILES)

clean:
	rm -f $(BIN)

install: all
	mkdir -p $(HOME)/.local/bin
	cp $(BIN) $(HOME)/.local/bin/go-pwgen

install-system: all
	cp $(BIN) /usr/local/bin/go-pwgen
