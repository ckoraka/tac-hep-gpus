# Assignments : Introduction to CUDA

- **Exercise 1** 
  - Write a CUDA kernel that swaps the elements of two vectors.
  - Start from file **swap_vectors.cu**.

- **Exercise 2** 
  - Write a CUDA kernel that adds two matrices of size N*M.
  - Express the indices of the matrices in 1 dimention :
    - In 1-d array the 2-d matrix will look like : [A(1,1),A(1,2),A(1,3),...A(1,N),A(2,1),A(2,2),A(2,3)....,A(N,N-1),A(N,N)] 
    - For a matrix of size N*M each element can be expressed as e.g. 2D:[i,j] = 1D:[i * M + j]
  - Use 2-dimentions to express threads and blocks: threadIdx.x, blockIdx.x and threadIdx.y, blockIdx.y.
  - Start from file **add_matrix.cu**
  
- **Exercise 3** 
  - Write a C++ function that multiplies two matrices of size N*N 
  - Write a CUDA kernel that multiplies two matrices of size N*N 
  - You should express this using a 1-dimentional vector :
      - In 1-d array the 2-d matrix will look like : [A(1,1),A(1,2),A(1,3),...A(1,N),A(2,1),A(2,2),A(2,3)....,A(N,N-1),A(N,N)] 
  - In the kernel use 2-dimentions to express threads and blocks: threadIdx.x, blockIdx.x and threadIdx.y, blockIdx.y.
  - Start from file **mult_matrix.cu**
  - Add error checking :
    - After allocating memory
    - After copying from host to device
    - After launching kernel
    - After copying from device to host
  - Using the timer to check how long did it take to excecute the matrix multiplication on the CPU
  - Using the timer to check how long did it take to excecute the matrix multiplication on the GPU

## Remember

After connecting to a Wisconsin computing node: 

**To set-up your environment:**
```
ssh g38nXX # XX:01-16
export LD_LIBRARY_PATH=/usr/local/cuda/lib
export PATH=$PATH:/usr/local/cuda/bin
```

**To compile:**

```
nvcc my_script.cu -o my_script
```

**To run:**

```
./my_script
```
