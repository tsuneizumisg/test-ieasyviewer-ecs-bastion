FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY ./check_login.sh .
RUN chmod 700 check_login.sh
RUN yum update -y
RUN yum install -y procps
RUN dnf -y --nogpgcheck install postgresql17 postgresql17-libs
ENTRYPOINT ["./check_login.sh"]
