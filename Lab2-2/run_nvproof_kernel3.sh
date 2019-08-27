nvcc kernel3.cu -o kernel3

nvprof -o kernel3_prof_timing1  ./kernel3 imagen.txt kernel3_profile1.txt 1
nvprof -o kernel3_prof_timing2  ./kernel3 imagen.txt kernel3_profile2.txt 2
nvprof -o kernel3_prof_timing3  ./kernel3 imagen.txt kernel3_profile3.txt 4
nvprof -o kernel3_prof_timing4  ./kernel3 imagen.txt kernel3_profile4.txt 8
nvprof -o kernel3_prof_timing5  ./kernel3 imagen.txt kernel3_profile5.txt 16
nvprof -o kernel3_prof_timing6  ./kernel3 imagen.txt kernel3_profile6.txt 32
nvprof -o kernel3_prof_timing7  ./kernel3 imagen.txt kernel3_profile7.txt 64
nvprof -o kernel3_prof_timing8  ./kernel3 imagen.txt kernel3_profile8.txt 128
nvprof -o kernel3_prof_timing9  ./kernel3 imagen.txt kernel3_profile9.txt 256
nvprof  -o kernel3_prof_timing10 ./kernel3  imagen.txt kernel3_profile10.txt 512


nvprof --analysis-metrics -o kernel3_prof_complete1  ./kernel3 imagen.txt kernel3_profile1.txt 1
nvprof --analysis-metrics -o kernel3_prof_complete2  ./kernel3 imagen.txt kernel3_profile2.txt 2
nvprof --analysis-metrics -o kernel3_prof_complete3  ./kernel3 imagen.txt kernel3_profile3.txt 4
nvprof --analysis-metrics -o kernel3_prof_complete4  ./kernel3 imagen.txt kernel3_profile4.txt 8
nvprof --analysis-metrics -o kernel3_prof_complete5  ./kernel3 imagen.txt kernel3_profile5.txt 16
nvprof --analysis-metrics -o kernel3_prof_complete6  ./kernel3 imagen.txt kernel3_profile6.txt 32
nvprof --analysis-metrics -o kernel3_prof_complete7  ./kernel3 imagen.txt kernel3_profile7.txt 64
nvprof --analysis-metrics -o kernel3_prof_complete8  ./kernel3 imagen.txt kernel3_profile8.txt 128
nvprof --analysis-metrics -o kernel3_prof_complete9  ./kernel3 imagen.txt kernel3_profile9.txt 256
nvprof --analysis-metrics -o kernel3_prof_complete10  ./kernel3 imagen.txt kernel3_profile10.txt 512

