//
// Created by guy on 18-5-7.
//

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char** argv) {

  int x;

  if (read(0, &x, sizeof(x)) < 1) {
    printf("Hum?\n");
    exit(1);
  }


  if(x == 0x12345678) {
    printf("Magic!!");
  } else{
    printf("Sorry!");
  }

  exit(0);

}
