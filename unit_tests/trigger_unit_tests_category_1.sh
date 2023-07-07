#!/usr/bin/env bash

source "${CI_PROJECT_DIR}"/custom_script/custom_script.sh

echo "=============================== START unit_test_1 ================================="


status_1="$(log1)"
echo "Function output: $status_1"
grep -q "OUTPUT of FUNCTION 1" <<< "$status_1"
status_grep=$?

if [[ $status_grep -eq 0 ]]; then
    echo "Unit test 1 is PASSED"
else
    echo "Unit test 1 is FAILED"
    exit 1
fi


echo "=============================== FINISH unit_test_1 ================================"