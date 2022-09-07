# Programming Languages Benchmark

This repository holds a matrix multiplication benchmark written for different programming languages. In case you want to write this benchmark to an other language and see it published here, feel free to contact me.

The matrices are of size 1024x1024 (1.073.741.824 multiplication and addition operations) and I populated them with random values between 0.0 and 1.0.
Each experiment is run 5 times and the total time it took to complete is displayed as a result.

##  Matrix Multiplication Benchmark Results

| Language  | Elapsed Time (Seconds) | Notes |
| ------------- | ------------- |------------- |
| FreePascal    | 21.0020  | Free Pascal Compiler (FPC) 3.2.2       |
| Java          | 22.1462       | GraalVM 22.2 Community Edition<br>(OpenJDK version 17.0.4)  |
| FreeBasic     | 25.8051       |FreeBASIC 1.09.0         |
| C             | 28.0330       |gcc.exe (<b>No optimization</b>)<br>(x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0|
| C#            | 56.1140       |.NET Framework 6.0        |
| Python        | 4426.7331     |Python 3.10.7        |

### Conclusion: 
FreePascal is 1.054 times faster than Java, Java Is 1.26 times faster than C and Python proves that sometimes it is faster to perform calculations using a pencil and a piece of paper. 

##  Machine Information
All results have come from the same PC with the following details:<br><br>
<img src="https://github.com/nsiatras/programming-languages-benchmark/blob/main/Images/CPUZ_1.png" alt="CPUZ #1">
<img src="https://github.com/nsiatras/programming-languages-benchmark/blob/main/Images/CPUZ_2.png" alt="CPUZ #2">
