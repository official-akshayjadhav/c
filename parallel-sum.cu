#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include<bits/stdc++.h>
#include <iostream>
#include <numeric>

using namespace std;

#define BLOCK_SIZE 1

__global__ void sum(int* input)  		// kernel function definition
{
	const int tid = threadIdx.x;
	int step_size = 1;
	int number_of_threads = blockDim.x;    // blockDim = 4 i.e. number of threads per block = 4
	

	while (number_of_threads > 0)
	{
		if (tid < number_of_threads) // still alive?
		{     
			const int fst = tid * step_size * 2;    //get the index in array
			const int snd = fst + step_size;		//get the index in array
			input[fst] += input[snd];				//calculate sum
					
		}

		step_size <<= 1; 				// increment step_size by 1
		number_of_threads >>= 1;		//decrement number of threads by 2
	}
	
}

int main()
{
	int count=0;
	// cout << "Enter the number of elements:\n" << endl;
	// cin>>count;
	count = 5;
	
	const int size = count * sizeof(int);
	
	int h[count];
	cout << "Enter the elements:\n" << endl;
	for(int i=0;i<count;i++)
	{
		// cout << "\n";
		// cin >> h[i];
		h[i] = i+1;
	}
	

	int* d;							//GPU parameter
       
	
	cudaMalloc(&d, size);			//assign memory to parameters on GPU
	
	cudaMemcpy(d, h, size, cudaMemcpyHostToDevice);		//copy the array from CPU to GPU
	sum <<<1, count >>>(d);							// call kernel function <<<number of blocks, number of threads= number of elements/2
	
	int result;
	
	cudaMemcpy(&result, d, sizeof(int), cudaMemcpyDeviceToHost);		// copy the result back from GPU to CPU

	cout << "Sum is " << result << endl;

	getchar();

	cudaFree(d);					// Free the allocated memory


	return 0;
}
