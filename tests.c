#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include<string.h>
#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdbool.h>

#include "ourlibrary.h"


static void test_get_float_is_0_2(void **state)
{
    (void)state;
    assert_float_equal(get_float_0_2(), 0.2, 0.00001);
}



int main()
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_get_float_is_0_2)
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}

