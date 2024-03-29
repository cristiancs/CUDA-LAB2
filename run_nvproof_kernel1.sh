nvcc kernel1.cu -o kernel1

nvprof ./kernel1 imagen.txt kernel1_profile1.txt 1
nvprof ./kernel1 imagen.txt kernel1_profile2.txt 2
nvprof ./kernel1 imagen.txt kernel1_profile3.txt 4
nvprof ./kernel1 imagen.txt kernel1_profile4.txt 8
nvprof ./kernel1 imagen.txt kernel1_profile5.txt 16
nvprof ./kernel1 imagen.txt kernel1_profile6.txt 32
nvprof ./kernel1 imagen.txt kernel1_profile7.txt 64
nvprof ./kernel1 imagen.txt kernel1_profile8.txt 128
nvprof ./kernel1 imagen.txt kernel1_profile9.txt 256
nvprof  ./kernel1 imagen.txt kernel1_profile10.txt 512


# nvprof --analysis-metrics -o kernel1_prof_complete1  ./kernel1 imagen.txt kernel1_profile1.txt 1
# nvprof --analysis-metrics -o kernel1_prof_complete2  ./kernel1 imagen.txt kernel1_profile2.txt 2
# nvprof --analysis-metrics -o kernel1_prof_complete3  ./kernel1 imagen.txt kernel1_profile3.txt 4
# nvprof --analysis-metrics -o kernel1_prof_complete4  ./kernel1 imagen.txt kernel1_profile4.txt 8
# nvprof --analysis-metrics -o kernel1_prof_complete5  ./kernel1 imagen.txt kernel1_profile5.txt 16
# nvprof --analysis-metrics -o kernel1_prof_complete6  ./kernel1 imagen.txt kernel1_profile6.txt 32
# nvprof --analysis-metrics -o kernel1_prof_complete7  ./kernel1 imagen.txt kernel1_profile7.txt 64
# nvprof --analysis-metrics -o kernel1_prof_complete8  ./kernel1 imagen.txt kernel1_profile8.txt 128
# nvprof --analysis-metrics -o kernel1_prof_complete9  ./kernel1 imagen.txt kernel1_profile9.txt 256
# nvprof --analysis-metrics -o kernel1_prof_complete10  ./kernel1 imagen.txt kernel1_profile10.txt 512

