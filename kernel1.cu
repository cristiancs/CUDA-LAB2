#include <bits/stdc++.h>

using namespace std;

__global__ void kernel(float* r, float* g, float* b, float* r2, float* g2, float* b2, int N, int M, int x) {
	int tId = threadIdx.x + blockIdx.x * blockDim.x;

	if(tId < N * M) {
    int c = tId % N;
    int des = ( ((c / x ) % 2 != 0)) * (tId - x) + ((c / x ) % 2 == 0) * (tId + x);
    int res = ( des <= N * M ) * des;
		r2[res] = r[tId];
		g2[res] = g[tId];
		b2[res] = b[tId];
	}
}

int main(int argc, char const *argv[]) {
	cudaEvent_t ct1, ct2;
	float *R, *G, *B;
	float *R_gpu, *G_gpu, *B_gpu;
	float *R_gpu2, *G_gpu2, *B_gpu2;
	float dt;

	int M, N, X = atoi(argv[3]);
	
	FILE *in = fopen(argv[1], "r");
	fscanf(in, "%d %d", &M, &N);

	int block_size = 256;
	int grid_size = (int) ceil( (float) M * N / block_size);

	R = new float[M*N];
	G = new float[M*N];
	B = new float[M*N];

	cudaMalloc(&R_gpu, sizeof(float) * N * M);
	cudaMalloc(&G_gpu, sizeof(float) * N * M);
	cudaMalloc(&B_gpu, sizeof(float) * N * M);

	cudaMalloc(&R_gpu2, sizeof(float) * N * M);
	cudaMalloc(&G_gpu2, sizeof(float) * N * M);
	cudaMalloc(&B_gpu2, sizeof(float) * N * M);

	for (int i = 0; i < N * M; ++i) fscanf (in, "%f", &R[i]);
	for (int i = 0; i < N * M; ++i) fscanf (in, "%f", &G[i]);
	for (int i = 0; i < N * M; ++i) fscanf (in, "%f", &B[i]);
	
	fclose (in);

	cudaMemcpy(R_gpu, R, sizeof(float) * N * M, cudaMemcpyHostToDevice);
	cudaMemcpy(G_gpu, G, sizeof(float) * N * M, cudaMemcpyHostToDevice);
	cudaMemcpy(B_gpu, B, sizeof(float) * N * M, cudaMemcpyHostToDevice);
    
	cudaEventCreate(&ct1);
	cudaEventCreate(&ct2);
	cudaEventRecord(ct1);

	kernel<<<grid_size, block_size>>>(R_gpu, G_gpu, B_gpu, R_gpu2, G_gpu2, B_gpu2, N, M, X);

	cudaEventRecord(ct2);
	cudaEventSynchronize(ct2);
	cudaEventElapsedTime(&dt, ct1, ct2);

	cout << "Tiempo: " << dt << "[ms]" << '\n';

	cudaMemcpy(R, R_gpu2, sizeof(float) * N * M, cudaMemcpyDeviceToHost);
	cudaMemcpy(G, G_gpu2, sizeof(float) * N * M, cudaMemcpyDeviceToHost);
	cudaMemcpy(B, B_gpu2, sizeof(float) * N * M, cudaMemcpyDeviceToHost);

	FILE * res;
	res = fopen (argv[2],"w");
	fprintf(res, "%d %d\n", M, N);

	for (int i = 0; i < N * M; ++i) fprintf(res, "%f%c", R[i], i == N * M - 1 ? '\n' : ' ');
	for (int i = 0; i < N * M; ++i) fprintf(res, "%f%c", G[i], i == N * M - 1 ? '\n' : ' ');
	for (int i = 0; i < N * M; ++i) fprintf(res, "%f%c", B[i], i == N * M - 1 ? '\n' : ' ');

	fclose (res);

	cudaFree(R_gpu);
	cudaFree(G_gpu);
	cudaFree(B_gpu);

	cudaFree(R_gpu2);
	cudaFree(G_gpu2);
	cudaFree(B_gpu2);

	delete R;
	delete G;
	delete B;

	return 0;
}