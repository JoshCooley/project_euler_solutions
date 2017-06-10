#!/usr/bin/env bash
set -e

## Problem 1: Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

max_multiple=999
divisors=(3 5)

# To figure out if x is a multiple of y
get_multiples(){
  true_multiples=()
  for test_multiple in $(eval echo {1..${max_multiple}}); do
    if [[ $(( test_multiple % divisor )) -eq 0 ]]; then
      true_multiples+=(${test_multiple})
    fi
  done
  echo ${true_multiples[@]}
}

all_true_multiples=()
for divisor in ${divisors[@]}; do
  all_true_multiples+=($(get_multiples))
done

multiple_sum=0;
for true_multiple in $(printf '%s\n' ${all_true_multiples[@]}|sort -n|uniq); do
  (( multiple_sum+=${true_multiple} ))
done

echo ${multiple_sum}