# Programming Languages Benchmark

This repository holds a matrix multiplication benchmark written for different programming languages.

The matrices are of size 1024x1024 (1.073.741.824 multiplication and addition operations) and I populated them with random values between 0.0 and 1.0.
Each experiment is run 5 times and the total time it took to complete is displayed as a result.

##  Matrix Multiplication Benchmark Results

| Language  | Elapsed Time (Seconds) | Notes |
| ------------- | ------------- |------------- |
| Java          | 22.1462       | OpenJDK version 17.0.4  |
| FreeBasic     | 25.8051       |FreeBASIC 1.09.0         |
| C             | 28.1500       |gcc.exe (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0|
| C#            | 56.1140       |.NET Framework 6.0        |
| Python        | 4426.7331     |Python 3.10.7        |

