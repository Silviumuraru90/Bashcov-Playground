#!/usr/bin/env bash

source "${CI_PROJECT_DIR}"/custom_script/custom_script.sh

echo "=============================== START unit_test_2 ================================="


status_2="$(log2)"
echo "Function output: $status_2"
grep -q "OUTPUT of FUNCTION 2" <<< "$status_2"
status_grep=$?

if [[ $status_grep -eq 0 ]]; then
    echo "Unit test 2 is PASSED"
else
    echo "Unit test 2 is FAILED"
    exit 1
fi


echo "=============================== FINISH unit_test_2 ================================"