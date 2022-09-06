# Programming Languages Benchmark

This repository holds a matrix multiplication benchmark written for different programming languages. In case you want to write this benchmark to an other language and see it published here, feel free to contact me.

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
| FreePascal / Delphi| Coming soon...     |        |

The <b>winner is Java</b> with 22.1462 seconds and the <b>Looser is Python</b> with 4426.7331 seconds.<br>
Conclusion: <b>Python is 199.886 times slower than Java</b>


##  Machine Information
All results have come from the same PC, whose characteristics are as follows:<br><br>
<img src="https://github.com/nsiatras/programming-languages-benchmark/blob/main/Images/CPUZ_1.png" alt="CPUZ #1">
<img src="https://github.com/nsiatras/programming-languages-benchmark/blob/main/Images/CPUZ_2.png" alt="CPUZ #2">
