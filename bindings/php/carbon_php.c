#include "carbon_php.h"

PHP_FUNCTION(carbon_version) {
        const char* version = carbon_version();
        RETURN_STRING(version);
}

PHP_FUNCTION(carbon_hello_world) {
        const char* message = helloWorld();
        RETURN_STRING(message);
}

const zend_function_entry carbon_functions[] = {
        PHP_FE(carbon_version, arginfo_carbon_version),
        PHP_FE(carbon_hello_world, arginfo_carbon_hello_world),
        PHP_FE_END
};

zend_module_entry carbon_module_entry = {
        STANDARD_MODULE_HEADER,
        "carbon",                   // Extension name
        carbon_functions,           // Functions
        NULL,                       // MINIT
        NULL,                       // MSHUTDOWN
        NULL,                       // RINIT
        NULL,                       // RSHUTDOWN
        NULL,                       // MINFO
        "1.0.0",                    // Version
        STANDARD_MODULE_PROPERTIES
};

#ifdef COMPILE_DL_CARBON
ZEND_GET_MODULE(carbon)
#endif
