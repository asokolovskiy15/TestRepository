FROM python:2

ADD my_script.py /

RUN pip install --upgrade pip
RUN pip install pystrich
RUN python -m py_compile my_script.py

CMD [ "python", "./my_script.py" ]
