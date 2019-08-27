rm -rf kernel2
nvcc kernel2.cu -o kernel2
./kernel2 imagen.txt kernel2_1.txt 1
./kernel2 imagen.txt kernel2_2.txt 2
./kernel2 imagen.txt kernel2_3.txt 4
./kernel2 imagen.txt kernel2_4.txt 8
./kernel2 imagen.txt kernel2_5.txt 16
./kernel2 imagen.txt kernel2_6.txt 32
./kernel2 imagen.txt kernel2_7.txt 64
./kernel2 imagen.txt kernel2_8.txt 128
./kernel2 imagen.txt kernel2_9.txt 256
./kernel2 imagen.txt kernel2_10.txt 512
