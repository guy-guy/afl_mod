//
// Created by guy on 18-5-7.
//

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char** argv) {

  int x;
  char* a = "1234!";
  if (read(0, &x, sizeof(x)) < 1) {
    printf("Hum?\n");
    exit(1);
  }


  if(x == 0x31323334) {
    printf("Magic!!");
    a[3000000000000] = 1;
  } else{
    printf("Sorry!");
  }

  exit(0);

}
