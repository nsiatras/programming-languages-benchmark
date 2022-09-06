import random
import time

n = 1024

# Add random values to Arrays A and B
A = [[random.random() for row in range(n)] for col in range(n)]
B = [[random.random() for row in range(n)] for col in range(n)]
C = [[0 for row in range(n)] for col in range(n)]

print("Python Matrix Multiplication Benchmark started. Please wait...");

start = time.time()

# Multiply A to B values and add them to C
for tests in range(0, 5):
    for i in range(n):
        for j in range(n):
            for k in range(n):
                C[i][j] += A[i][k] * B[k][j]

end = time.time()
print("Python Matrix Multiplication Benchmark finished in: %0.6f" % (end-start))