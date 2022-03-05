FROM python:3.8

# Initial setup
RUN apt-get update && apt-get upgrade -y


# Copy app
RUN mkdir /ddos-ripper
COPY . /ddos-ripper
WORKDIR /ddos-ripper
RUN chmod a+x run.sh


# Run
CMD ["bash", "run.sh"]