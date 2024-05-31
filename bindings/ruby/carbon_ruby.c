// bindings/ruby/carbon_ruby.c
#include "carbon_ruby.h"

VALUE carbon_version(VALUE self) {
    return rb_str_new2(carbon_version());
}

VALUE carbon_hello_world(VALUE self) {
    helloWorld();
    return Qnil;
}

void Init_carbon() {
    VALUE cCarbon = rb_define_module("Carbon");
    rb_define_singleton_method(cCarbon, "version", carbon_version, 0);
    rb_define_singleton_method(cCarbon, "hello_world", carbon_hello_world, 0);
}
