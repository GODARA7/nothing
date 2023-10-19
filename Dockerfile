FROM python:3.9.2-slim-buster
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git wget pv jq aria2 rclone wget python3-dev ffmpeg mediainfo
COPY . .
RUN pip3 install -r r.txt
CMD ["python3", "na.py"]
