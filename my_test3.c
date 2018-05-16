//
// Created by guy on 18-5-8.
//


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char** argv) {

  char x[10];
  char* a = "1234!";
  int b = 0;
  if (scanf("%s%d",x,&b) < 1) {
    printf("Hum?\n");
    exit(1);
  }
  int index = 0;
  while(index < b)
    index++;
  if(index == 100)
  {
    printf("Magic!!");
    a[3000000000000] = 1;
  }
  if(strcmp(x,"hello!") == 0)
  {
    printf("Magic!!");
    a[3000000000000] = 1;
  } else{
    printf("Sorry!");
  }

  exit(0);

}
