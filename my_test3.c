//
// Created by guy on 18-5-8.
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


  char str1[100]  = "(%rsp)";
  char str2[100] = "(%rsp)";
  printf("%d",strstr(str1,str2) - str1);
  exit(0);

}