FROM amazonlinux:2

WORKDIR /usr/src/kinbal

COPY . .

RUN yum install -y jq gzip nano tar git unzip wget

RUN yum update -y

# docker run -it --expose 9090 -p 0.0.0.0:9090:22 --entrypoint /bin/sh testimage1