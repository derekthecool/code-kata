#!/usr/bin/env bash
# shellcheck disable=2046

test_sum_should_pass(){
  assert_equals 0 $(./StringCalculator.sh 0)
}
