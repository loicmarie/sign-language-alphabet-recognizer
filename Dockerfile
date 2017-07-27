FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-tk \
    python-opencv

RUN mkdir /handstracker
WORKDIR /handstracker

ADD requirements.txt /handstracker
ADD train.py /handstracker
ADD classify.py /handstracker
ADD classify_webcam.py /handstracker
COPY dataset /handstracker/dataset/

RUN pip3 install -r requirements.txt
