#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include<bits/stdc++.h>
#include <iostream>
#include <numeric>

using namespace std;

#define BLOCK_SIZE 1

__global__ void sum(int* input)  		 
{
	const int tid = threadIdx.x;
	int step_size = 1;
	int number_of_threads = blockDim.x;      
	cout<< number_of_threads;

	while (number_of_threads > 0)
	{
		if (tid < number_of_threads)  
		{     
			const int fst = tid * step_size * 2;     
			const int snd = fst + step_size;	
			input[fst] += input[snd];							
			cout<<tid<<" "<<fst<<" "<<snd<<endl;
		}

		step_size <<= 1; 			
		number_of_threads >>= 1;	
	}
	
}

int main()
{
	cout<<"in main"<<endl;
	
	int count=0;
	cout << "Enter the number of elements:\n" << endl;
	cin>>count;
	
	const int size = count * sizeof(int);
	
	int h[count];
	cout << "Enter the elements:\n" << endl;
	for(int i=0;i<count;i++)
	{
		cout << "\n";
		cin >> h[i];

	}
	

	int* d;
       
	
	cudaMalloc(&d, size);			
	cudaMemcpy(d, h, size, cudaMemcpyHostToDevice);
	sum <<<1, count >>>(d);						
	
	int result;
	
	cudaMemcpy(&result, d, sizeof(int), cudaMemcpyDeviceToHost);	

	cout << "Sum is " << result << endl;

	getchar();

	cudaFree(d);		


	return 0;
}
