#ifndef CARBON_PHP_H
#define CARBON_PHP_H

#include <php.h>
#include "carbon.h"

PHP_FUNCTION(carbon_version);
PHP_FUNCTION(carbon_hello_world);

extern zend_module_entry carbon_module_entry;
#define phpext_carbon_ptr &carbon_module_entry

ZEND_BEGIN_ARG_INFO(arginfo_carbon_version, 0)
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_INFO(arginfo_carbon_hello_world, 0)
ZEND_END_ARG_INFO()

#endif // CARBON_PHP_H
