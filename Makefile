CC = gcc
CFLAGS = -O2 -march=native

all: discoal
#
# executable 
#


debug: discoal_multipop.c discoalFunctions.c discoal.h discoalFunctions.h
	$(CC) $(CFLAGS) -g  -o discoal discoal_multipop.c discoalFunctions.c ranlibComplete.c alleleTraj.c -lm

discoal: discoal_multipop.c discoalFunctions.c discoal.h discoalFunctions.h
	$(CC) $(CFLAGS)  -o discoal discoal_multipop.c discoalFunctions.c ranlibComplete.c alleleTraj.c -lm
	
test: alleleTrajTest.c alleleTraj.c alleleTraj.h discoalFunctions.c
	$(CC) $(CFLAGS)  -o alleleTrajTest alleleTrajTest.c alleleTraj.c ranlibComplete.c discoalFunctions.c -lm
#
# clean
#

clean:
	rm -f discoal *.o

