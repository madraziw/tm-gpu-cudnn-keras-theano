# ubuntu16.04 with jupyterhub notebook
# GPU devel and cuDNN version - cuda 8.0 dev & cuDNN 5.0
FROM madraziw/tm-gpu-cudnn-scipy-notebook

MAINTAINER mad chang <MadChang@itri.org.tw>

RUN /opt/conda/bin/pip install -U keras

COPY keras.json /home/$NB_USER/.keras/

USER $NB_USER
