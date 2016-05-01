FROM python:2
MAINTAINER Yuya Kusakabe <yuya.kusakabe@gmail.com>

ENV VERSION v0.0.80

RUN git clone https://github.com/Yelp/elastalert.git && \
    cd elastalert && \
    git checkout refs/tags/$VERSION && \
    pip install -U pip && \
    pip install -r requirements.txt && \
    python setup.py install

ENTRYPOINT ["elastalert"]
