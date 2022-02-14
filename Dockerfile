FROM nvidia/cuda:11.6.0-devel-ubuntu20.04

RUN apt update && apt upgrade -y
RUN apt install python3 python3-pip -y
RUN apt install git -y
RUN pip3 install jupyter ipython pipenv
RUN pip3 install matplotlib
RUN pip3 install numpy
RUN pip3 install Pillow
RUN pip3 install torch==1.10.2+cu113 torchvision==0.11.3+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
RUN pip3 install tqdm
RUN pip3 install wandb

CMD tail -f /dev/null