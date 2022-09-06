Dim fCount as integer
fCount = 1024
Dim fArrayA(fCount,fCount) as double
Dim fArrayB(fCount,fCount) as double
Dim fArrayC (fCount,fCount)as double
Dim benchmarkTests as integer
Dim i as integer,j as integer,k as integer
Dim tmp as String
Dim StartTime As Double, EndTime as Double
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

print "FreeBasic Matrix Multiplication Benchmark started. Please wait..."

StartTime = Timer

for benchmarkTests = 0 to 4
   ' Add random values to Arrays A and B (0 to 1)
   for i=0 to fCount - 1
      for j=0 to fCount - 1
          fArrayA(i,j) = RND
          fArrayB(i,j) = RND 
          fArrayC(i,j) = 0
      next j
   next i   
   
   ' Multiply A to B values and add them to C
   for i = 0 to fCount - 1
      for j = 0 to fCount - 1
         for k = 0 to fCount - 1
            fArrayC(i,j) += fArrayA(i,k) * fArrayB(k,j)
         next k
      next j
   next i  
next benchmarkTests

EndTime = Timer

print("Free Basic Matrix Multiplication Benchmark finished in: " & (EndTime-StartTime) & " seconds")
input "Press any key to exit", tmp
