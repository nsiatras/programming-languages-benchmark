package java_matrix_multiplication;

import java.util.Random;

/**
 *
 * @author Nikos Siatras
 */
public class Java_Matrix_Multiplication
{

    final static int fCount = 1024;
    final static double[][] fArrayA = new double[fCount][fCount];
    final static double[][] fArrayB = new double[fCount][fCount];
    final static double[][] fArrayC = new double[fCount][fCount];

    public static void main(String[] args)
    {
        int i = 0;

        System.out.println("Java Matrix Multiplication Benchmark started. Please wait...");

        long start = System.nanoTime();
        for (i = 0; i < 5; i++)
        {
            RunBenchMark();
        }

        long stop = System.nanoTime();
        double timeDiff = (stop - start) * 1e-9;
        System.out.println("Java Matrix Multiplication Benchmark finished in: " + timeDiff + " seconds");
    }

    private static void RunBenchMark()
    {
        // Add random values to Arrays A and B
        Random r = new Random();
        for (int i = 0; i < fCount; i++)
        {
            for (int j = 0; j < fCount; j++)
            {
                fArrayA[i][j] = r.nextDouble();
                fArrayB[i][j] = r.nextDouble();
                fArrayC[i][j] = 0;
            }
        }

        // Multiply A to B values and add them to C
        for (int i = 0; i < fCount; i++)
        {
            for (int j = 0; j < fCount; j++)
            {
                for (int k = 0; k < fCount; k++)
                {
                    fArrayC[i][j] += fArrayA[i][k] * fArrayB[k][j];
                }
            }
        }
    }
}
