##############################################################################
# Makefile for Prelab 6
# CMP_SC 1050
# Spring 2025
# February 24, 2025
# By Jim Ries (RiesJ@missouri.edu)
##############################################################################
CC = gcc
CPP = g++
CFLAGS = -Wall -Werror -c -g -std=c11 -I. -I/cluster/pixstor/class/cscore/include
CPPFLAGS = -Wall -Werror -c -g -I. -I/cluster/pixstor/class/cscore/include
LDFLAGS = -lm -lMUCSSeg -L. -L/cluster/pixstor/class/cscore/lib

default: prelab6

%.o : %.c 
	@echo Compiling $^ 
	@$(CC) $(CFLAGS) $^

%.o : %.cc
	@echo Compiling $^ 
	@$(CPP) $(CPPFLAGS) $^

prelab6 : main.o prelab6.o
	@echo Linking $@ 
	@$(CC) $^ $(LDFLAGS) -o $@

clean : 
	@rm -rf *.o
	@rm -rf prelab6
	@echo All Clean!
