FROM python:{0}

ADD *.py /

RUN pip install --upgrade pip
RUN pip install pystrich
RUN python -m py_compile *.py

CMD [ "python", "./*.py" ]
