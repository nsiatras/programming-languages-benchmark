#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define n 1024

double fArrayA[n][n];
double fArrayB[n][n];
double fArrayC[n][n];
double getSecondsFromTicks();

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
}

int main()
{
    int i = 0;
    double timeStart, timeFinish;

    printf("C Matrix Multiplication Benchmark started. Please wait...\n");

    timeStart = getSecondsFromTicks();
    for(i=0; i < 4; i++)
    {
        RunBenchmark();
    }
    timeFinish = getSecondsFromTicks();

    printf("C Matrix Multiplication Benchmark finished in %f seconds \n" , timeFinish - timeStart);
}

double getSecondsFromTicks()
{
    clock_t ticks;
    double et;
    ticks = clock();
    et = (double)ticks / CLOCKS_PER_SEC;
    return et;
}
