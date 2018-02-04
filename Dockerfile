FROM amd64/alpine:3.7
RUN apk update && apk upgrade && \
apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
echo "Asia/Tokyo" > /etc/timezone && \
apk del tzdata
