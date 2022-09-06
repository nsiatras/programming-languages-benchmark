namespace MatrixMultiplication
{
    class MatrixMultiplicationBenchmark
    {
        private static int fCount = 1024;

        private static double[,] fArrayA = new double[fCount, fCount];
        private static double[,] fArrayB = new double[fCount, fCount];
        private static double[,] fArrayC = new double[fCount, fCount];

        static void Main(string[] args)
        {
            int i = 0;

            Console.WriteLine("C# Matrix Multiplication Benchmark started. Please wait...");

            long start = DateTime.Now.Ticks;
            for (i = 0; i < 5; i++)
            {
                RunBenchmark();
            }

            long stop = DateTime.Now.Ticks;
            long timeDiff = (stop - start);
            Console.WriteLine("C# Matrix Multiplication Benchmark finished in: " + TimeSpan.FromTicks(timeDiff).TotalSeconds.ToString() + " seconds");
        }

        static void RunBenchmark()
        {
            // Add random values to Arrays A and B
            Random r = new Random();
            for (int i = 0; i < fCount; i++)
            {
                for (int j = 0; j < fCount; j++)
                {
                    fArrayA[i, j] = r.NextDouble();
                    fArrayB[i, j] = r.NextDouble();
                    fArrayC[i, j] = 0;
                }
            }

            // Multiply A to B values and add them to C
            for (int i = 0; i < fCount; i++)
            {
                for (int j = 0; j < fCount; j++)
                {
                    for (int k = 0; k < fCount; k++)
                    {
                        fArrayC[i, j] += fArrayA[i, k] * fArrayB[k, j];
                    }
                }
            }
        }
    }
}





