FROM public.ecr.aws/amazonlinux/amazonlinux:2023
COPY ./check_login.sh .
RUN chmod 700 check_login.sh
RUN yum update -y && \
    yum install -y procps && \
    rpm --import https://download.postgresql.org/pub/repos/yum/keys/PGDG-RPM-GPG-KEY-RHEL && \
    dnf -y localinstall  https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    dnf -y install postgresql17 postgresql17-libs
ENTRYPOINT ["./check_login.sh"]
