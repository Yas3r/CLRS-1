/* Heapsort implemented in C
 * by Lawrence X. Amlord
 * Apr 8th, 2014
 * Xi'an, China
 * License: GPL v3
**/
 
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef struct {
    int* array;
    int length;
    int heap_size;
} heap;

int parent(int i){ /* A[i] parent's index */
    return floor(i / 2);
}

int left(int i){ /* A[i] left-child's index */
    return (2 * i);
}

int right(int i){ /* A[i] right-child's index */
    return ((2 * i) + 1);
}

void exchange(int* x, int* y){
    int temp;
    temp = *x;
    *x = * y;
    *y = temp;
}

void max_heapify(heap H, int i){ /* "float down" A[i] to matain the heap property */
    int l = left(i);
    int r = right(i);
    int largest = 0;
    if ((l < H.heap_size) && (H.array[l] > H.array[i])) {
	largest = l;
    } else {
	largest = i;
    }
    if ((r < H.heap_size) && (H.array[r] > H.array[largest])) {
	largest = r;
    }
    if (largest != i) {
	exchange(&(H.array[i]), &(H.array[largest]));
	max_heapify(H, largest);
    }
}

void build_max_heap(heap H){
    int i;
    for (i = floor(H.length / 2) - 1; i >= 0; i = i - 1) {
	max_heapify(H, i);
    }
}

void clrs_heapsort(heap H){
    int i;
    build_max_heap(H);
    for (i = H.length - 1; i >= 1; i = i - 1) {
	exchange(&(H.array[0]), &(H.array[i]));
	H.heap_size = H.heap_size - 1;
	max_heapify(H, 0);
    }
}

int main(int argc, char* argv[]){
    int i = 0;
    int A[10] = {4, 1, 3, 2, 16, 9, 10, 14, 8, 7};
    heap H = {A, 10, 10};
    clrs_heapsort(H);
    for (i = 0; i <= 9; i = i + 1) {
	printf("%d\t", A[i]);
    }
    printf("\n");
    return 0;
}


