FROM python:3.7-stretch

# runtime dependencies
RUN \
apt-get update && \
apt-get install -y --no-install-recommends \
    libopenblas-base \
    libcurl3-gnutls \
    # for sphinx
    libpulse-dev \
    swig \
&& rm -rf /var/lib/apt/lists/*

RUN set -ex \
     && pip install --upgrade pip \
     && pip install --no-cache cython \
     && pip install --no-cache \
    BeautifulSoup4 \
    bson \
    "chardet>3.0.0" \
    click \
    cloudant \
    cssselect  \
    cython \
    cytoolz \
    dateparser \
    dumb-init \
    eli5 \
    fake-useragent \
    fasteners \
    feather-format \
    feedparser \
    flake8 \
    flask \
    Flask-Sockets \
    flask_cors \
    fuzzywuzzy \
    gensim \
    google-api-python-client \
    google-cloud-datastore \
    google-cloud-storage \
    hdbscan \
    imblearn \
    jupyter \
    jupyterlab \
    langid \
    matplotlib \
    more-itertools \
    mypy \
    nltk \
    nose \
    pandas \
    pep257 \
    pep8 \
    pillow \
    pip-tools \
    prometheus_client \
    pycodestyle \
    pycrypto \
    pycrypto \
    pycurl \
    pyemd \
    pyflakes \
    pygithub \
    pyldavis \
    pymemcache \
    pympler \
    pymysql \
    PyPDF2 \
    python-dateutil \
    python-Levenshtein \
    python-magic \
    pytz \
    redis \
    regex \
    requests \
    retry \
    scikit-learn \
    slacker \
    tabulate \
    textract \
    tqdm \
    typing \
    ujson \
    urllib3[secure]  \
    watchdog \
    whoosh \
    wordcloud \
     && pip install --no-cache --compile pycurl


ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

CMD /bin/bash
