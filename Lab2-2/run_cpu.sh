rm -rf cpu
g++ -Wall cpu.cpp -o cpu
./cpu imagen.txt salida1.txt 1
./cpu imagen.txt salida2.txt 2
./cpu imagen.txt salida3.txt 4
./cpu imagen.txt salida4.txt 8
./cpu imagen.txt salida5.txt 16
./cpu imagen.txt salida6.txt 32
./cpu imagen.txt salida7.txt 64
./cpu imagen.txt salida8.txt 128
./cpu imagen.txt salida9.txt 256
./cpu imagen.txt salida10.txt 512
python convertidor.py

#cat img_salida.txt