#include "StringCalculator.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  int StringCalculatorSum = Sum(argv[1]);

  return StringCalculatorSum == atoi(argv[2]) ? 0 : 1;
}
