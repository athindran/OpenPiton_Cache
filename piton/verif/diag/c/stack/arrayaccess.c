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
  int data[4];
} ;

int main(void) {
  struct access input1[2048];
  struct access input2[2048];
  struct access output[2048];
  int i;

  for(i = 0;i<256;i++)
    {
    input1[i].data[0] = 12;
    input2[i].data[0] = 24;
    }
  for(i = 256+128-1;i>256;i--)
    {
    input1[i].data[0] = 12;
    input2[i].data[0] = 24;
    }
  for(i = 2047;i>256+128;i--)
    {
    input1[i].data[0] = 12;
    input2[i].data[0] = 24;
    }
  for(i = 1024;i>=0;i--)
    {
    output[i].data[1] = input1[i].data[0]+input2[i].data[0];
    }

  printf("Hello\n\n");
  printf("This\n\n");
  printf("is\n");
  printf("test\n");
  if(output[100].data[1]<37 && output[100].data[1]>35) {
    printf("Test passed :)\n");
    pass();
  } else {
    printf("Test failed :(\n");
    fail();
  }
//pass();
}
