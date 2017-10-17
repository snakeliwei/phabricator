FROM RedpointGames/phabricator
RUN cd /src/phabricator/phabricator \
    && git pull \
    && cd /srv/phabricator/libphutil \
    && git pull \
    && /srv/phabricator/arcanist \
    && git pull \
    && /srv/phabricator/PHPExcel \
    && git pull
    
EXPOSE 80 443 22 24
CMD ["/bin/bash", "/app/init.sh"]
