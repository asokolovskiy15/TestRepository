# FROM microsoft/dotnet
FROM microsoft/dotnet:2.0-sdk

RUN echo "Hello! World!"
RUN bash
RUN apt-get update
RUN apt-get install git
RUN git
