FROM redpointgames/phabricator

RUN rm -rf /src/phabricator \
    && mkdir -p /srv/phabricator \
    && cd /srv/phabricator \
    && git clone https://www.github.com/phacility/libphutil.git /srv/phabricator/libphutil \
    && git clone https://www.github.com/phacility/arcanist.git /srv/phabricator/arcanist \
    && git clone https://www.github.com/phacility/phabricator.git /srv/phabricator/phabricator \
    && git clone https://www.github.com/PHPOffice/PHPExcel.git /srv/phabricator/PHPExcel \
    && chown -R PHABRICATOR:wwwgrp-phabricator /srv/phabricator 

