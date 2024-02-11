all: gen/go/sso/sso_grpc.pb.go gen/go/sso/sso.pb.go
	

gen/go/sso/sso_grpc.pb.go:
	 protoc -I proto proto/sso/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

gen/go/sso/sso.pb.go:
	 protoc -I proto proto/sso/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

