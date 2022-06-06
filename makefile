.DEFAULT_TARGET: build

build: dart_cec.so dart_cec_bindings_generated.dart

dart_cec.so: src/dart_cec.go
	cd src && go build -o dart_cec.so -buildmode=c-shared

dart_cec_bindings_generated.dart: dart_cec.h
	flutter pub run ffigen --config ffigen.yaml
