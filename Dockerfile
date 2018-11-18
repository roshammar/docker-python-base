FROM python:3.7-stretch

RUN groupadd -g 1000 docker && \
    useradd -r -u 1000 -g docker docker

RUN set -ex \
     && pip install --upgrade pip \
     && pip install --no-cache cython \
     && pip install --no-cache \
    BeautifulSoup4 \
    bson \
    "chardet>3.0.0" \
    click \
    cssselect  \
    cython \
    cytoolz \
    dateparser \
    dumb-init \
    fake-useragent \
    fasteners \
    feedparser \
    flake8 \
    jupyter \
    jupyterlab \
    more-itertools \
    mypy \
    nose \
    pep257 \
    pep8 \
    pip-tools \
    pycodestyle \
    pyflakes \
    python-dateutil \
    pytz \
    regex \
    requests \
    retry \
    tabulate \
    tqdm \
    typing


ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

USER docker
CMD /bin/bash
