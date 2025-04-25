FROM public.ecr.aws/amazonlinux/amazonlinux:2023
# COPY ./check_login.sh .
# RUN chmod 700 check_login.sh
# RUN yum update -y
# RUN yum install -y procps
# ENTRYPOINT ["./check_login.sh"]
# 
# FROM alpine
# COPY ./check_login.sh .
# RUN chmod 700 check_login.sh
# RUN apk upgrade
# ENTRYPOINT ["./check_login.sh"]
# FROM alpine/socat
# ENTRYPOINT ["socat", "tcp4-listen:5432,reuseaddr,fork", "TCP:iev-test-db.cluster-ckyrutiauzlk.ap-northeast-1.rds.amazonaws.com:5432"]
