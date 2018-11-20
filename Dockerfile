FROM python:2

COPY sources.list /etc/apt/sources.list
WORKDIR /tmp

RUN apt-get update \
    && apt-get install -y vim git flex bison phantomjs

RUN git clone --depth 1 https://github.com/WhaleShark-Team/cobra.git /cobra \
    && cd /cobra \
    && pip install --no-cache-dir -r requirements.txt \
    && cp config.template config

EXPOSE 5000

RUN pip -V && python -V ; which python

# CMD [ "python", "/cobra/cobra.py", "-H 127.0.0.1", "-P 8888"]

ENTRYPOINT [ "python","/cobra/cobra.py","-H","0.0.0.0","-P","5000" ]