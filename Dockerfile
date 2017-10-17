FROM redpointgames/phabricator
RUN cd /src/phabricator/phabricator \
    && git pull \
    && cd /srv/phabricator/libphutil \
    && git pull \
    && cd /srv/phabricator/arcanist \
    && git pull \
    && cd /srv/phabricator/PHPExcel \
    && git pull
    
EXPOSE 80 443 22 24
CMD ["/bin/bash", "/app/init.sh"]
