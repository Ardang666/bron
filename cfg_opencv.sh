PWD=`pwd`
rm tmp/opencv/ -rf
mkdir tmp/opencv -p
cd tmp/opencv
wget https://github.com/opencv/opencv/archive/3.4.5.zip
unzip 3.4.5.zip
cd opencv-3.4.5

mkdir build
cd build
sudo apt-get -y install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg.dev libtiff4.dev libswscale-dev libjasper-dev libqt5xmlpatterns5-dev libavresample-dev libgphoto2-dev libgtk-3-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev  libv4l-dev 

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D WITH_QT=OFF -D WITH_OPENGL=ON ..
make -j8
sudo make install
cd $PWD
rm tmp/opencv -rf
