#!/bin/sh
## script for opencv install

# ref - https://qiita.com/harmegiddo/items/c3db5fd567fa4c6cc9fb

# home directory
cd ~

## install opencv
# make opencv directory
mkdir cv && cd cv

# clone opencv from github
git clone https://github.com/Itseez/opencv.git
cd opencv

# change version of opencv
git tag
git checkout 3.3.0

# build setting
mkdir build && cd build
cmake -G "Unix Makefiles" --build . -D BUILD_CUDA_STUBS=OFF -D BUILD_DOCS=OFF \
-D BUILD_EXAMPLES=OFF -D BUILD_JASPER=OFF -D BUILD_JPEG=OFF -D BUILD_OPENEXR=OFF \
-D BUILD_PACKAGE=ON -D BUILD_PERF_TESTS=OFF -D BUILD_PNG=OFF -D BUILD_SHARED_LIBS=ON \
-D BUILD_TBB=OFF -D BUILD_TESTS=OFF -D BUILD_TIFF=OFF -D BUILD_WITH_DEBUG_INFO=ON \
-D BUILD_ZLIB=OFF -D BUILD_WEBP=OFF -D BUILD_opencv_apps=ON -D BUILD_opencv_calib3d=ON \
-D BUILD_opencv_core=ON -D BUILD_opencv_cudaarithm=OFF -D BUILD_opencv_cudabgsegm=OFF \
-D BUILD_opencv_cudacodec=OFF -D BUILD_opencv_cudafeatures2d=OFF -D BUILD_opencv_cudafilters=OFF \
-D BUILD_opencv_cudaimgproc=OFF -D BUILD_opencv_cudalegacy=OFF -D BUILD_opencv_cudaobjdetect=OFF \
-D BUILD_opencv_cudaoptflow=OFF -D BUILD_opencv_cudastereo=OFF -D BUILD_opencv_cudawarping=OFF \
-D BUILD_opencv_cudev=OFF -D BUILD_opencv_features2d=ON -D BUILD_opencv_flann=ON \
-D BUILD_opencv_highgui=ON -D BUILD_opencv_imgcodecs=ON -D BUILD_opencv_imgproc=ON \
-D BUILD_opencv_java=OFF -D BUILD_opencv_ml=ON -D BUILD_opencv_objdetect=ON \
-D BUILD_opencv_photo=ON -D BUILD_opencv_python2=OFF -D BUILD_opencv_python3=ON \
-D BUILD_opencv_shape=ON -D BUILD_opencv_stitching=ON -D BUILD_opencv_superres=ON \
-D BUILD_opencv_ts=ON -D BUILD_opencv_video=ON -D BUILD_opencv_videoio=ON \
-D BUILD_opencv_videostab=ON -D BUILD_opencv_viz=OFF -D BUILD_opencv_world=OFF \
-D CMAKE_BUILD_TYPE=RELEASE -D WITH_1394=ON -D WITH_CUBLAS=OFF -D WITH_CUDA=OFF \
-D WITH_CUFFT=OFF -D WITH_EIGEN=ON -D WITH_FFMPEG=ON -D WITH_GDAL=OFF -D WITH_GPHOTO2=OFF \
-D WITH_GIGEAPI=ON -D WITH_GSTREAMER=OFF -D WITH_GTK=ON -D WITH_INTELPERC=OFF -D WITH_IPP=ON \
-D WITH_IPP_A=OFF -D WITH_JASPER=ON -D WITH_JPEG=ON -D WITH_LIBV4L=ON -D WITH_OPENCL=ON \
-D WITH_OPENCLAMDBLAS=OFF -D WITH_OPENCLAMDFFT=OFF -D WITH_OPENCL_SVM=OFF -D WITH_OPENEXR=ON \
-D WITH_OPENGL=ON -D WITH_OPENMP=OFF -D WITH_OPENNI=OFF -D WITH_PNG=ON -D WITH_PTHREADS_PF=OFF \
-D WITH_PVAPI=OFF -D WITH_QT=ON -D WITH_TBB=ON -D WITH_TIFF=ON -D WITH_UNICAP=OFF \
-D WITH_V4L=OFF -D WITH_VTK=OFF -D WITH_WEBP=ON -D WITH_XIMEA=OFF -D WITH_XINE=OFF \
-D WITH_LAPACKE=ON -D WITH_MATLAB=OFF ..

# build
make -j8
sudo make install



# -- from here --
# 'darknet directory'
# --
cd ~/Desktop/darknet
# vim Makefile


<< Makefile
 1 GPU=0		# If you have GPU, change 0 to 1
 2 CUDNN=0		# If you install CUDNN, change 0'to 1
 3 CUDNN_HALF=0
 4 OPENCV=1		# change 0 to 1
 5 AVX=0
 6 OPENMP=0
 7 LIBSO=0
 8 ZED_CAMERA=0
 9
10 # set GPU=1 and CUDNN=1 to speedup on GPU
11 # set CUDNN_HALF=1 to further speedup 3 x times (Mixed-precision on Tensor Cores) GPU: Volta, Xavier, Turing and higher
12 # set AVX=1 and OPENMP=1 to speedup on CPU (if error occurs then set AVX=0)
13
14 DEBUG=1		# change 0 to 1 (whichever)
15
16 ARCH= -gencode arch=compute_30,code=sm_30 \
17       -gencode arch=compute_35,code=sm_35 \
18       -gencode arch=compute_50,code=[sm_50,compute_50] \
19       -gencode arch=compute_52,code=[sm_52,compute_52] \
20           -gencode arch=compute_61,code=[sm_61,compute_61]
21 
22 OS := $(shell uname)
23 
24 # Tesla V100
25 # ARCH= -gencode arch=compute_70,code=[sm_70,compute_70]
26 
27 # GeForce RTX 2080 Ti, RTX 2080, RTX 2070, Quadro RTX 8000, Quadro RTX 6000, Quadro RTX 5000, Tesla T4, XNOR Tensor Cores
28 # ARCH= -gencode arch=compute_75,code=[sm_75,compute_75]
29 
30 # Jetson XAVIER
31 # ARCH= -gencode arch=compute_72,code=[sm_72,compute_72]
32 
33 # GTX 1080, GTX 1070, GTX 1060, GTX 1050, GTX 1030, Titan Xp, Tesla P40, Tesla P4
34 # ARCH= -gencode arch=compute_61,code=sm_61 -gencode arch=compute_61,code=compute_61
35 
36 # GP100/Tesla P100 - DGX-1
37 # ARCH= -gencode arch=compute_60,code=sm_60
38 	
39 # For Jetson TX1, Tegra X1, DRIVE CX, DRIVE PX - uncomment:
40 # ARCH= -gencode arch=compute_53,code=[sm_53,compute_53]
41 
42 # For Jetson Tx2 or Drive-PX2 uncomment:
43 # ARCH= -gencode arch=compute_62,code=[sm_62,compute_62]
44 
45
46 VPATH=./src/
47 EXEC=darknet
48 OBJDIR=./obj/
49 
50 ifeq ($(LIBSO), 1)
51 LIBNAMESO=libdarknet.so
52 APPNAMESO=uselib
53 endif
54 
55 CC=gcc
56 CPP=g++
57 NVCC=nvcc
58 OPTS=-Ofast
59 LDFLAGS= -lm -pthread
60 COMMON= -Iinclude/ -I3rdparty/stb/include
61 CFLAGS=-Wall -Wfatal-errors -Wno-unused-result -Wno-unknown-pragmas -fPIC
62 
63 ifeq ($(DEBUG), 1)
64 #OPTS= -O0 -g
65 OPTS= -Og -g			# remove # at the beginning
66 #COMMON+= -DDEBUG	# add # at the begining
67 #CFLAGS+= -DDEBUG	# add # at the begining
68 #else				# add # at the begining
69 #ifeq ($(AVX), 1)	# add # at the begining
70 #CFLAGS+= -ffp-contract=fast -mavx -mavx2 -msse3 -msse4.1 -msse4.2 -msse4a	# add # at the begining
71 #endif				# add # at the begining
72 endif
73 
74 CFLAGS+=$(OPTS)
75 
76 ifeq ($(OPENCV), 1)
77 COMMON+= -DOPENCV
78 CFLAGS+= -DOPENCV
79 LDFLAGS+= `pkg-config --libs opencv`
80 COMMON+= `pkg-config --cflags opencv`
81 endif
82 
83 ifeq ($(OPENMP), 1)
84 CFLAGS+= -fopenmp
85 #LDFLAGS+= -lgomp	# add # at the begining
86 endif
87
    ...

** changed place **
- line 1
- line 2
- line 4
- line 14

- line 63 ~ 85
Makefile

# recompile
# make