FROM tensorflow/tensorflow:latest-gpu-py3
RUN apt-get -y update
# necessary to make add_user.sh work
RUN apt-get install -y --fix-missing sudo
RUN pip install --upgrade pip
# stuff opencv complains if they are not installed
RUN apt-get install -y --fix-missing \ 
    libsm6 \ 
    libxext6 \
    libxrender-dev \
    libgtk2.0-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev
RUN apt-get clean && rm -rf /tmp/* /var/tmp/*
RUN pip --no-cache-dir install \
opencv-python \
scikit-image \
pandas \
numpy \
seaborn \
keras \
matplotlib \ 
pillow ipython jupyter scikit-learn	

COPY add_user.sh /
ENTRYPOINT ["/add_user.sh"]
