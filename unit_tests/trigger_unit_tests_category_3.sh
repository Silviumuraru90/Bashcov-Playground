#!/usr/bin/env bash

source "${CI_PROJECT_DIR}"/custom_script/custom_script.sh

echo "=============================== START unit_test_3 ================================="


status_3="$(log3)"
echo "Function output: $status_3"
grep -q "OUTPUT of FUNCTION 3" <<< "$status_3"
status_grep=$?

if [[ $status_grep -eq 0 ]]; then
    echo "Unit test 3 is PASSED"
else
    echo "Unit test 3 is FAILED"
    exit 1
fi


echo "=============================== FINISH unit_test_3 ================================"

echo "=============================== START unit_test_4 ================================="


status_4="$(log4)"
echo "Function output: $status_4"
grep -q "OUTPUT of FUNCTION 4" <<< "$status_4"
status_grep=$?

if [[ $status_grep -eq 0 ]]; then
    echo "Unit test 4 is PASSED"
else
    echo "Unit test 4 is FAILED"
    exit 1
fi


echo "=============================== FINISH unit_test_4 ================================"

echo "=============================== START unit_test_5 ================================="


status_5="$(log5)"
echo "Function output: $status_5"
grep -q "OUTPUT of FUNCTION 5" <<< "$status_5"
status_grep=$?

if [[ $status_grep -eq 0 ]]; then
    echo "Unit test 5 is PASSED"
else
    echo "Unit test 5 is FAILED"
    exit 1
fi


echo "=============================== FINISH unit_test_5 ================================"