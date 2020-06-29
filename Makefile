.PHONY: protos

ROOT_DIR = ./
GEN_REPO="github.com/Kazan/prototest_gen_go

protos:
	protoc --proto_path=. --go_out=gen --go_opt=paths=source_relative computers/*.proto
	protoc --proto_path=. --go_out=gen --go_opt=paths=source_relative finance/*.proto

clean:
	rm -R gen/*