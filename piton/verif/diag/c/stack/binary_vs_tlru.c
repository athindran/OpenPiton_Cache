// Modified by Princeton University on June 9th, 2015
/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: factorial.c
* Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
* 
* The above named program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License version 2 as published by the Free Software Foundation.
* 
* The above named program is distributed in the hope that it will be 
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public
* License along with this work; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
* 
* ========== Copyright Header End ============================================
*/
#ifndef ARG
# define ARG 10
#endif

#include "libc.h"
#include "put.h"

struct  access{
  int data[16];
} ;
int main(void) {

  int i;
  long c;
  struct access arr[2048];

  for(i = 0;i<1024;i++)
  {
     arr[i].data[4] = i;
  }

  for(i=1024; i<1024+512; i++)
  {
     arr[i].data[4] = i;
  }
  for(i=256; i<512; i++)
  {
     c = arr[i].data[4];
  }

  printf("Hello\n\n");
  printf("This\n\n");
  printf("is\n");
  printf("test\n");
//  if((*(array+540)).data[4]==541 && (*(array+1100)).data[4]==1100) {
//    printf("Test passed :)\n");
  pass();
//  } else {
//    printf("Test failed :(\n");
//    fail();
//  }
}
