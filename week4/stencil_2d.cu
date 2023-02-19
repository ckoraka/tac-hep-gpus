#include <stdio.h>
#include <algorithm>


using namespace std;

#define N 64
#define RADIUS 2
#define BLOCK_SIZE 32


__global__ void stencil_2d(int *in, int *out) {

	__shared__ int temp[BLOCK_SIZE + 2 * RADIUS][BLOCK_SIZE + 2 * RADIUS];
	int gindex_x = FIXME
	int lindex_x = FIXME
	int gindex_y = FIXME
	int lindex_y = FIXME

	// Read input elements into shared memory
	int size = N + 2 * RADIUS;
	temp[lindex_x][lindex_y] = FIXME

	if (threadIdx.x < RADIUS) {
		FIXME
	}

	if (threadIdx.y < RADIUS ) {
		FIXME
	}


	// Apply the stencil
	int result = 0;
	for (int offset = -RADIUS; offset <= RADIUS; offset++){
		FIXME
	}

	FIXME
	// Store the result
	out[gindex_y+size*gindex_x] = result;
}


void fill_ints(int *x, int n) {
   // Store the result
   // https://en.cppreference.com/w/cpp/algorithm/fill_n
   fill_n(x, n, 1);
}


int main(void) {

	int *in, *out; // host copies of a, b, c
	int *d_in, *d_out; // device copies of a, b, c

	// Alloc space for host copies and setup values
	int size = (N + 2*RADIUS)*(N + 2*RADIUS) * sizeof(int);
	in = (int *)malloc(size); fill_ints(in, (N + 2*RADIUS)*(N + 2*RADIUS));
	out = (int *)malloc(size); fill_ints(out, (N + 2*RADIUS)*(N + 2*RADIUS));

	// Alloc space for device copies
	cudaMalloc((void **)&d_in, size);
	FIXME

	// Copy to device
	cudaMemcpy(d_in, in, size, cudaMemcpyHostToDevice);
	FIXME

	// Launch stencil_2d() kernel on GPU
	int gridSize = (N + BLOCK_SIZE-1)/BLOCK_SIZE;
	dim3 grid(gridSize, gridSize);
	dim3 block(BLOCK_SIZE, BLOCK_SIZE);
	// Launch the kernel 
	// Properly set memory address for first element on which the stencil will be applied
	stencil_2d<<<grid,block>>>(d_in + RADIUS*(N + 2*RADIUS) + RADIUS , d_out + RADIUS*(N + 2*RADIUS) + RADIUS);

	// Copy result back to host
	FIXME

	// Error Checking
	for (int i = 0; i < N + 2 * RADIUS; ++i) {
		for (int j = 0; j < N + 2 * RADIUS; ++j) {

			if (i < RADIUS || i >= N + RADIUS) {
				if (out[j+i*(N + 2 * RADIUS)] != 1) {
					printf("Mismatch at index [%d,%d], was: %d, should be: %d\n", i,j, out[j+i*(N + 2 * RADIUS)], 1);
					return -1;
				}
			}
			else if (j < RADIUS || j >= N + RADIUS) {
				if (out[j+i*(N + 2 * RADIUS)] != 1) {
					printf("Mismatch at index [%d,%d], was: %d, should be: %d\n", i,j, out[j+i*(N + 2 * RADIUS)], 1);
					return -1;
				}
			}		 
			else {
				if (out[j+i*(N + 2 * RADIUS)] != 1 + 4 * RADIUS) {
					printf("Mismatch at index [%d,%d], was: %d, should be: %d\n", i,j, out[j+i*(N + 2 * RADIUS)], 1 + 4*RADIUS);
					return -1;
				}
			}
		}
	}

	// Cleanup
	free(in);
	free(out);
	cudaFree(d_in);
	cudaFree(d_out);
	printf("Success!\n");

	return 0;
}


