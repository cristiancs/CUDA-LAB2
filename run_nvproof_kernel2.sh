nvcc kernel2.cu -o kernel2

EQUIS=1;nvprof ./kernel2 imagen.txt kernel2_profile1.txt $EQUIS
EQUIS=2;nvprof ./kernel2 imagen.txt kernel2_profile2.txt $EQUIS
EQUIS=4;nvprof ./kernel2 imagen.txt kernel2_profile3.txt $EQUIS
EQUIS=8;nvprof ./kernel2 imagen.txt kernel2_profile4.txt $EQUIS
EQUIS=16;nvprof ./kernel2 imagen.txt kernel2_profile5.txt $EQUIS
EQUIS=32;nvprof ./kernel2 imagen.txt kernel2_profile6.txt $EQUIS
EQUIS=64;nvprof ./kernel2 imagen.txt kernel2_profile7.txt $EQUIS
EQUIS=128;nvprof ./kernel2 imagen.txt kernel2_profile8.txt $EQUIS
EQUIS=256;nvprof ./kernel2 imagen.txt kernel2_profile9.txt $EQUIS
EQUIS=512;nvprof  ./kernel2 imagen.txt kernel2_profile10.txt $EQUIS


# nvprof --analysis-metrics -o kernel2_prof_complete1  ./kernel2 imagen.txt kernel2_profile1.txt 1
# nvprof --analysis-metrics -o kernel2_prof_complete2  ./kernel2 imagen.txt kernel2_profile2.txt 2
# nvprof --analysis-metrics -o kernel2_prof_complete3  ./kernel2 imagen.txt kernel2_profile3.txt 4
# nvprof --analysis-metrics -o kernel2_prof_complete4  ./kernel2 imagen.txt kernel2_profile4.txt 8
# nvprof --analysis-metrics -o kernel2_prof_complete5  ./kernel2 imagen.txt kernel2_profile5.txt 16
# nvprof --analysis-metrics -o kernel2_prof_complete6  ./kernel2 imagen.txt kernel2_profile6.txt 32
# nvprof --analysis-metrics -o kernel2_prof_complete7  ./kernel2 imagen.txt kernel2_profile7.txt 64
# nvprof --analysis-metrics -o kernel2_prof_complete8  ./kernel2 imagen.txt kernel2_profile8.txt 128
# nvprof --analysis-metrics -o kernel2_prof_complete9  ./kernel2 imagen.txt kernel2_profile9.txt 256
# nvprof --analysis-metrics -o kernel2_prof_complete10  ./kernel2 imagen.txt kernel2_profile10.txt 512



# EQUIS=1;python convertidor.py kernel2_profile$EQUIS
# EQUIS=2;python convertidor.py kernel2_profile$EQUIS
# EQUIS=4;python convertidor.py kernel2_profile$EQUIS
# EQUIS=5;python convertidor.py kernel2_profile$EQUIS
# EQUIS=6;python convertidor.py kernel2_profile$EQUIS
# EQUIS=7;python convertidor.py kernel2_profile$EQUIS
# EQUIS=8;python convertidor.py kernel2_profile$EQUIS
# EQUIS=8;python convertidor.py kernel2_profile$EQUIS
# EQUIS=10;python convertidor.py kernel2_profile$EQUIS