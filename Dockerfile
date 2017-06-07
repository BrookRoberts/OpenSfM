FROM paulinus/opensfm-docker-base:opencv3

COPY . /source/OpenSfM

WORKDIR /source/OpenSfM

RUN pip install -r requirements.txt && \
    python setup.py build
