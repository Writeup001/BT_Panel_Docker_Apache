FROM centos:7
WORKDIR /BT_Panel_Docker_Apache
COPY ./Environment .
RUN sh install_6.0.sh && \
    sh /www/server/panel/install/install_soft.sh 1 install apache 2.4 && \
    sh /www/server/panel/install/install_soft.sh 1 install php 5.6 && \
    sh /www/server/panel/install/install_soft.sh 1 install mysql 5.6 && \
    yum clean all && \
    sh BT_Panel_Docker_apache.sh && \
    ln BT_Panel_Docker_apache.sh /etc/init.d/BT_Panel_Docker_apache.sh && \
    ln BT_Panel_Docker_apache.sh /etc/profile.d/BT_Panel_Docker_apache.sh && \
    chkconfig --add BT_Panel_Docker_apache.sh && \
    chkconfig BT_Panel_Docker_apache.sh on
EXPOSE 80 888 8888
ENTRYPOINT ["/bin/bash"]
