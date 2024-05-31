// bindings/node/carbon_node.cpp
#include "carbon_node.h"

void Version(const v8::FunctionCallbackInfo<v8::Value>& args) {
    v8::Isolate* isolate = args.GetIsolate();
    args.GetReturnValue().Set(v8::String::NewFromUtf8(isolate, carbon_version()).ToLocalChecked());
}

void HelloWorld(const v8::FunctionCallbackInfo<v8::Value>& args) {
    helloWorld();
}

void Initialize(v8::Local<v8::Object> exports) {
    NODE_SET_METHOD(exports, "version", Version);
    NODE_SET_METHOD(exports, "helloWorld", HelloWorld);
}

NODE_MODULE(NODE_GYP_MODULE_NAME, Initialize)
