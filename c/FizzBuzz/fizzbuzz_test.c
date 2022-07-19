#include "fizzbuzz.h"
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
  char FizzBuzz_output[20] = {'\0'};
  memset(FizzBuzz_output, 0, 20);
  FizzBuzz(atoi(argv[1]), FizzBuzz_output);
  return strcmp(FizzBuzz_output, argv[2]);
}
