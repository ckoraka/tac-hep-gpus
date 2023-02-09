#include <stdio.h>


const int DSIZE_X = 256;
const int DSIZE_Y = 256;

__global__ void add_matrix(FIXME)
{
    //FIXME:
    // Express in terms of threads and blocks
    int idx = 
    int idy = 
    // Add the two matrices - make sure you are not out of range
    if (idx <  FIXME && idy < FIXME )
        C[idx][idx] =  FIXME

}

int main()
{

    // Create and allocate memory for host and device pointers 

    // Fill in the matrices
    // FIXME
    for (int i = 0; i < DSIZE_X; i++) {
        for (int j = 0; j < DSIZE_Y; j++) {
            //FIXME
        }
    }

    // Copy from host to device

    // Launch the kernel
    // dim3 is a built in CUDA type that allows you to define the block 
    // size and grid size in more than 1 dimentions
    // Syntax : dim3(Nx,Ny,Nz)
    dim3 blockSize(,); 
    dim3 gridSize(,); 
    
    add_matrix<<<gridSize, blockSize>>>(FIXME);

    // Copy back to host 

    // Print and check some elements to make the addition was succesfull

    // Free the memory     

    return 0;
}