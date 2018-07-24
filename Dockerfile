FROM python:3

ADD my_script.py /

RUN pip install --upgrade pip
RUN pip install pystrich

CMD [ "python", "./my_script.py" ]
