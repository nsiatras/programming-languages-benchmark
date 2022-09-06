#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define n 1024

double fArrayA[n][n];
double fArrayB[n][n];
double fArrayC[n][n];

void RunBenchmark()
{
    // Add random values to Arrays A and B
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            fArrayA[i][j] = (double) rand() / (double) RAND_MAX;
            fArrayB[i][j] = (double) rand() / (double) RAND_MAX;
            fArrayC[i][j] = 0;
        }
    }

    // Multiply A to B values and add them to C
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            for (int k = 0; k < n; k++)
            {
                fArrayC[i][j] += fArrayA[i][k] * fArrayB[k][j];
            }
        }
    }

    return 0;
}

int main()
{
    int i = 0;

    struct timespec start, end;
    double time_spent;

    printf("C Matrix Multiplication Benchmark started. Please wait...\n");

    clock_gettime(CLOCK_REALTIME, &start);
    for(i=0; i<4; i++)
    {
        RunBenchmark();
    }

    clock_gettime(CLOCK_REALTIME, &end);
    time_spent = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1000000000.0;

    printf("C Matrix Multiplication Benchmark finished in %f seconds \n" , time_spent);
}
