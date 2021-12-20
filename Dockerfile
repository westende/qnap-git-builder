FROM centos:7

RUN yum install epel-release -y

RUN yum install -y ca-certificates jq gcc wget make curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel

COPY git-builder.sh .

CMD ./git-builder.sh
