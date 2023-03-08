# **Final Project**

### Goal of the final project is to combine most of the knowledge you have gained over the past weeks. You will build your code based on many things you have already implemented in previous exercises:

## C++ and CPU profiling 
- Start by writing a code in C++ that :
  - Creates two 2-dimensional square matrices A and B of size DSIZE >= 512 and fill them in with arbitrary integer values.
  - Performs a 2-d stencil operation on each matrix. You can use any radius size, but keep it > 2.
  - Performs a matrix multiplication of the matrices after the stencil application
  - Make sure that you also add utility functions to check your results. 
- Profile your C++ code using the VTune profiler and identify the compute intensive parts.

## Porting to CUDA
- Write the same application in CUDA: 
  - You should write a CUDA kernel that performs the stencil operation and one for the matrix multiplication.
  - Initially make use of explicit memory copies from host to devise and vise-versa and make use only of the default CUDA stream.
  - Make sure to add utility functions for error checking and for verifying your results.
- Profile your code using nsys and document/comment on the time spent in each CUDA API call. Also, make note on the time spent on host and device.
- Try switching from explicit memory copies to managed memory. 
   - Profile again using either nsys on ncu and comment on the performance of your application. 

## Optimizing performance in CUDA
- Optimize the performance of your code making use of non-default CUDA streams and shared memory. 
- Once you have decided on the best approach, profile your application and compare the time spent in each API call and the overall timing of your application with your initial CUDA implementation.

## Making use of Alpaka
- Re-write your application making use of the Alpaka portability library.
- Describe the steps you had to follow to re-write your code.


### Some things to remember :
- Include instructions on how you set-up the environment, compile and execute your C++/ CUDA/ Alpaka application.
- Save the output of the profiler for the results you will report in your project (in csv, txt or any other format you prefer).
