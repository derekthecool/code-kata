#include "fizzbuzz.h"
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
  char FB_output[20] = {'\0'};
  memset(FB_output,0,20);
  FB(atoi(argv[1]), FB_output);
  return strcmp(FB_output, argv[2]);
}
