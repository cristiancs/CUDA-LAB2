rm -rf kernel3
nvcc kernel3.cu -o kernel3
./kernel3 imagen.txt kernel3_1.txt 1
./kernel3 imagen.txt kernel3_2.txt 2
./kernel3 imagen.txt kernel3_3.txt 4
./kernel3 imagen.txt kernel3_4.txt 8
./kernel3 imagen.txt kernel3_5.txt 16
./kernel3 imagen.txt kernel3_6.txt 32
./kernel3 imagen.txt kernel3_7.txt 64
./kernel3 imagen.txt kernel3_8.txt 128
./kernel3 imagen.txt kernel3_9.txt 256
./kernel3 imagen.txt kernel3_10.txt 512
