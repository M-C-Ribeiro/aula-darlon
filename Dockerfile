FROM st:base

RUN git clone git@github.com:darlonv/aula-darlon.git
WORKDIR /aula-darlon/

CMD ["streamlit", "run", "hello.py"]
