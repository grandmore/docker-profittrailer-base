FROM openjdk:8
MAINTAINER  Stuart Fenton <stuart@grandmore.com>

# RUN apt --fix-broken install -y

# Upgrade the os to latest versions
RUN  apt-get update -y && \
     apt-get install -y wget zip && \
     apt-get clean

# Get Current Version
# https://github.com/taniman/profit-trailer/releases/
RUN wget -O ProfitTrailer.zip https://github.com/taniman/profit-trailer/releases/download/2.0.4/ProfitTrailer-2.0.4.zip && \
  unzip ProfitTrailer.zip
