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


  u_int8_t * a = ((u_int8_t *)&x);
  if (a[0] != '1')
    goto Sorry;
  else if(a[1] != '2')
    goto Sorry;
  else if(a[2] != '3')
    goto Sorry;
  else if(a[3] != '4')
    goto Sorry;
  else
  {
    printf("Magic!!!");
    exit(0);
  }

Sorry:
  printf("Sorry!!");
  exit(0);


}
