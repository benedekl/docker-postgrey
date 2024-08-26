#!/bin/sh

exec /usr/sbin/postgrey --verbose \
  --inet="${POSTGREY_LISTEN:-"0.0.0.0:10023"}" \
  --delay="${POSTGREY_DELAY:-"900"}" \
  --max-age="${POSTGREY_MAX_AGE:-"35"}" \
  --auto-whitelist-clients="${POSTGREY_AUTO_WL:-"10"}" \
  --greylist-text="${POSTGREY_TEXT:-"Greylisted, see https://postgrey.schweikert.ch/help"}"
