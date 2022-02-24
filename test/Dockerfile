FROM localhost:5000/fholzer/nginx-brotli

RUN apk --update add \
		mercurial \
		openssl \
		ffmpeg \
		uwsgi \
		uwsgi-python \
		perl \
		perl-fcgi \
		perl-gd \
		perl-io-socket-ssl \
		perl-net-ssleay \
		perl-test-harness-utils \
	&& rm -rf /var/cache/apk/*

ADD tests.sh /usr/bin/tests.sh
RUN rm /var/log/nginx/*.log
USER nginx
RUN	hg clone http://hg.nginx.org/nginx-tests /nginx-tests

ENTRYPOINT ["sh"]
