ARG TEST_TAG
FROM local-registry:5000/fholzer/nginx-brotli:${TEST_TAG}

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

RUN	hg clone http://hg.nginx.org/nginx-tests /nginx-tests

ADD tests.sh /usr/bin/tests.sh
