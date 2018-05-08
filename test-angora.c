/*
   american fuzzy lop - a trivial program to test the build
   --------------------------------------------------------

   Written and maintained by Michal Zalewski <lcamtuf@google.com>

   Copyright 2014 Google Inc. All rights reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at:

     http://www.apache.org/licenses/LICENSE-2.0

 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
static int trigger = 0;
static int buf[8];
void f(int x){
	if(x){
		int a;
		a += 1;
		if(trigger){
			if(read(0,buf,8))
				printf("ss");
		}else{
			int a;;
			a += 1;
		}
	}else{
		if(!trigger){
			trigger = 1;
		}
	}
}
int main(int argc, char** argv) {

  f(read(0,buf,8));
  f(read(0,buf,8));

}
