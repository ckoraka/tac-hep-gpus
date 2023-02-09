#include <stdio.h>


const int DSIZE = 40960;
const int block_size = 256;
const int grid_size = DSIZE/block_size;


__global__ void vector_addition(FIXME) {

    //FIXME:
    // Express the vector index in terms of threads and blocks
    int idx =  ;
    // Swap the vector elements - make sure you are not out of range

}


int main() {


    float *h_A, *h_B, *h_C, *d_A, *d_B, *d_C;
    h_A = new float[DSIZE];
    h_B = new float[DSIZE];
    h_C = new float[DSIZE];


    for (int i = 0; i < DSIZE; i++) {
        h_A[i] = rand()/(float)RAND_MAX;
        h_B[i] = rand()/(float)RAND_MAX;
        h_C[i] = 0;
    }


    // Allocate memory for host and device pointers 

    // Copy from host to device

    // Launch the kernel

    // Copy back to host 

    // Print and check some elements to make sure swapping was successfull

    // Free the memory 

    return 0;
}
