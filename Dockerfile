FROM amd64/ubuntu:18.04
USER root
/bin/sh -c apt-get update   && apt-get install -y python screen git wget python3-requests
/bin/sh -c wget https://raw.githubusercontent.com/rolandsmedi95/giautoidi/beta/daonhanh/config/container_appservice_share.py -O /etc/dao.py
/bin/sh -c chmod a+x /etc/dao.py
ENTRYPOINT ["/bin/sh" "-c" "python3 /etc/dao.py"]
