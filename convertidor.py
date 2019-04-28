import matplotlib.pyplot as mpimg
import numpy as np


def RGBtoTXT(name):
    img = mpimg.imread(name+'.png')
    M, N, _ = img.shape
    RGB = np.array([img[:, :, i].reshape(M*N) for i in range(3)])
    # img[y,x,c] = RGB[c,x+y*N]
    np.savetxt(name+'.txt', RGB, fmt='%.8f', delimiter=' ',
               header='%d %d' % (M, N), comments='')


def TXTtoRGB(name):
    RGB = np.loadtxt(name+'.txt', delimiter=' ', skiprows=1)
    with open(name+'.txt') as imgfile:
        M, N = map(int, imgfile.readline().strip().split())
    img = np.ones((M, N, 4))
    for i in range(3):
        img[:, :, i] = RGB[i].reshape((M, N))
    mpimg.imsave(name+'_fromfile.png', img)

# Utilizar nombres sin extension
# Solo se aceptan imagenes en formato png


# Generar archivos de texto:
# RGBtoTXT('imagen')

# Generar imagenes
TXTtoRGB("kernel1_profile1")
TXTtoRGB("kernel1_profile2")
TXTtoRGB("kernel1_profile3")
TXTtoRGB("kernel1_profile4")
TXTtoRGB("kernel1_profile5")
TXTtoRGB("kernel1_profile6")
TXTtoRGB("kernel1_profile7")
TXTtoRGB("kernel1_profile8")
TXTtoRGB("kernel1_profile9")
TXTtoRGB("kernel1_profile10")
