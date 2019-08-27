rm -rf kernel1
nvcc kernel1.cu -o kernel1
./kernel1 imagen.txt kernel1_1.txt 1
./kernel1 imagen.txt kernel1_2.txt 2
./kernel1 imagen.txt kernel1_3.txt 4
./kernel1 imagen.txt kernel1_4.txt 8
./kernel1 imagen.txt kernel1_5.txt 16
./kernel1 imagen.txt kernel1_6.txt 32
./kernel1 imagen.txt kernel1_7.txt 64
./kernel1 imagen.txt kernel1_8.txt 128
./kernel1 imagen.txt kernel1_9.txt 256
./kernel1 imagen.txt kernel1_10.txt 512
python convertidor.py

#cat img_salida.txt