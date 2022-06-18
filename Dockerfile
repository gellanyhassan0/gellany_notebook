#Deriving the latest base image
FROM python:latest

LABEL Maintainer="Elgilany Hassan"

WORKDIR /home

#COPY gellany_tools.py ./
#COPY requirements.txt ./

RUN apt-get update
RUN apt-get install git
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip 
RUN pip install jupyter

#RUN jupyter notebook --allow-root --port=8888 --ip=0.0.0.0

RUN git clone https://github.com/gellanyhassan0/gellany_notebook.git ./

RUN pip install -r ./requirements.txt


CMD python3 -c "import signal; signal.pause()"
