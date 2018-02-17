FROM gcr.io/google-appengine/openjdk:8
MAINTAINER  Stuart Fenton <stuart@grandmore.com>

# Upgrade the os to latest versions
RUN  apt-get update -y && \
     apt-get install -y wget zip && \
     apt-get clean

# Get Current Version
# https://github.com/taniman/profit-trailer/releases/
RUN wget https://github.com/taniman/profit-trailer/releases/download/v1.2.6.16/ProfitTrailer.zip && \
  unzip ProfitTrailer.zip
