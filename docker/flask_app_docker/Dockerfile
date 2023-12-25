FROM python:3.13.0a2-bullseye

RUN git clone https://github.com/DogukanUrker/flaskBlog.git && \
    cd ./flaskBlog && \
    pip3 install -r requirements.txt

WORKDIR /flaskBlog

CMD [ "python3", "app.py" ]

