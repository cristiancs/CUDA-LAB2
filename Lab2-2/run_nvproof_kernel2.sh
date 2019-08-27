nvcc kernel2.cu -o kernel2

nvprof ./kernel2  -o kernel2_prof_timing1 imagen.txt kernel2_profile1.txt 1
nvprof ./kernel2  -o kernel2_prof_timing2 imagen.txt kernel2_profile2.txt 2
nvprof ./kernel2  -o kernel2_prof_timing3 imagen.txt kernel2_profile3.txt 4
nvprof ./kernel2  -o kernel2_prof_timing4 imagen.txt kernel2_profile4.txt 8
nvprof ./kernel2  -o kernel2_prof_timing5 imagen.txt kernel2_profile5.txt 16
nvprof ./kernel2  -o kernel2_prof_timing6 imagen.txt kernel2_profile6.txt 32
nvprof ./kernel2  -o kernel2_prof_timing7 imagen.txt kernel2_profile7.txt 64
nvprof ./kernel2  -o kernel2_prof_timing8 imagen.txt kernel2_profile8.txt 128
nvprof ./kernel2  -o kernel2_prof_timing9 imagen.txt kernel2_profile9.txt 256
nvprof  ./kernel2  -o kernel2_prof_timing10 imagen.txt kernel2_profile10.txt 512


nvprof --analysis-metrics -o kernel2_prof_complete1  ./kernel2 imagen.txt kernel2_profile1.txt 1
nvprof --analysis-metrics -o kernel2_prof_complete2  ./kernel2 imagen.txt kernel2_profile2.txt 2
nvprof --analysis-metrics -o kernel2_prof_complete3  ./kernel2 imagen.txt kernel2_profile3.txt 4
nvprof --analysis-metrics -o kernel2_prof_complete4  ./kernel2 imagen.txt kernel2_profile4.txt 8
nvprof --analysis-metrics -o kernel2_prof_complete5  ./kernel2 imagen.txt kernel2_profile5.txt 16
nvprof --analysis-metrics -o kernel2_prof_complete6  ./kernel2 imagen.txt kernel2_profile6.txt 32
nvprof --analysis-metrics -o kernel2_prof_complete7  ./kernel2 imagen.txt kernel2_profile7.txt 64
nvprof --analysis-metrics -o kernel2_prof_complete8  ./kernel2 imagen.txt kernel2_profile8.txt 128
nvprof --analysis-metrics -o kernel2_prof_complete9  ./kernel2 imagen.txt kernel2_profile9.txt 256
nvprof --analysis-metrics -o kernel2_prof_complete10  ./kernel2 imagen.txt kernel2_profile10.txt 512

