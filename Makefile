.PHONY: protos

GEN_REPO="github.com/Kazan/prototest_gen_go

protos:
	#mkdir gen/computers
	#protoc --proto_path=computers --go_out=gen --go-grpc_out=./gen/computers/ computers/*.proto
	protoc --proto_path=. --go_out=gen --go_opt=paths=source_relative computers/*.proto

clean:
	rm -R gen/*