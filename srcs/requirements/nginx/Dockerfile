FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
