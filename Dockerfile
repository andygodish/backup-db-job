FROM postgres:14 

WORKDIR /app

# Install AWS CLI

RUN apt update
RUN apt install -y unzip curl

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install -i /usr/local/aws-cli -b /usr/local/bin

COPY ./backup-s3.sh ./

CMD ["/bin/sh", "./backup-s3.sh"]





