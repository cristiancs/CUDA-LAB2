#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>
#include <stdlib.h>
using namespace std;
#include <iterator>
#include <algorithm>
void swapColumnas(float r[], float g[], float b[], int columnas, int offset, int binSize, int filas)
{
	float temp_r, temp_g, temp_b;
	int col, j, current, nextRow;
	for (col = 0; col < binSize; col++)
	{
		for (j = 0; j < filas; j++)
		{

			current = (binSize * offset * 2) + col + columnas * j;
			nextRow = (binSize * offset * 2) + binSize + col + columnas * j;
			// Copiar a un array temporal
			temp_r = r[nextRow];
			temp_g = g[nextRow];
			temp_b = b[nextRow];

			// Escribir a la izquierda lo de la derecha
			r[nextRow] = r[current];
			g[nextRow] = g[current];
			b[nextRow] = b[current];

			// Escribir a la derecha lo de la izquierda
			r[current] = temp_r;
			g[current] = temp_g;
			b[current] = temp_b;
		}
	}
}

int main(int argc, char const *argv[])
{
	FILE *pFile;
	int n, m;
	float *r, *g, *b;

	pFile = fopen("imagen.txt", "r");
	fscanf(pFile, "%d %d", &m, &n);

	r = new float[n * m];
	g = new float[n * m];
	b = new float[n * m];

	for (int i = 0; i < n * m; ++i)
	{
		fscanf(pFile, "%f", &r[i]);
	}

	for (int i = 0; i < n * m; ++i)
	{
		fscanf(pFile, "%f", &g[i]);
	}

	for (int i = 0; i < n * m; ++i)
	{
		fscanf(pFile, "%f", &b[i]);
	}

	fclose(pFile);

	clock_t t1, t2;
	double ms;

	t1 = clock();

	int binSize = 128;

	for (int i = 0; i < int(n / (binSize * 2)); ++i)
	{
		cout << i << endl;
		swapColumnas(r, g, b, n, i, binSize, m);
	}

	t2 = clock();
	ms = 1000.0 * (double)(t2 - t1) / CLOCKS_PER_SEC;
	cout << "Tiempo CPU: " << ms << " [ms]" << endl;

	FILE *pSalida;
	pSalida = fopen("img_salida.txt", "w");
	fprintf(pSalida, "%d %d\n", m, n);
	for (int i = 0; i < n * m; ++i)
	{
		if (i == n * m - 1)
		{
			fprintf(pSalida, "%f", r[i]);
		}
		else
		{
			fprintf(pSalida, "%f ", r[i]);
		}
	}
	fprintf(pSalida, "\n");
	for (int i = 0; i < n * m; ++i)
	{
		if (i == n * m - 1)
		{
			fprintf(pSalida, "%f", g[i]);
		}
		else
		{
			fprintf(pSalida, "%f ", g[i]);
		}
	}
	fprintf(pSalida, "\n");
	for (int i = 0; i < n * m; ++i)
	{
		if (i == n * m - 1)
		{
			fprintf(pSalida, "%f", b[i]);
		}
		else
		{
			fprintf(pSalida, "%f ", b[i]);
		}
	}
	delete r;
	delete g;
	delete b;

	//cin.get();
	return 0;
}