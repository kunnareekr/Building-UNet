FROM nvidia/cuda:11.6.0-devel-ubuntu20.04

RUN apt update && apt upgrade -y
RUN apt install python3 python3-pip -y
RUN apt install git -y
RUN pip install jupyter ipython pipenv
RUN pip install matplotlib
RUN pip install numpy
RUN pip install Pillow
RUN pip install torch
RUN pip install torchvision
RUN pip install tqdm
RUN pip install wandb

CMD tail -f /dev/null