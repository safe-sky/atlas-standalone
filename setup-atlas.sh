export TOKEN=$(docker-compose logs atlas | grep 'Admin token active' | tail -1 | sed -e 's/.*token=\(.*\) expires.*/\1/')

docker-compose exec atlas atlascmd \
    --atlas-token="$TOKEN" --atlas-host="localhost:3840" \
    aerodrome create DEMO \
    --iata MMX \
    --metar ESMS \
    --rwy 17-35:2800/45/Y,A,B,C,D \
    --rwy 11-29:799/18/E,F \
    --aprs N,S,HA,HB,JA,JB,W \
    --twys Y,A,B,C,D,H,J,E,F \
    --map /etc/atlas/demo.json \
    --features MOBILE_SENSORS_FEATURE,ATIS_REPORTING_FEATURE,DESKTOP_UI_FEATURE,MEDIA_CAPTURE_FEATURE,SEND_RCR_FEATURE,FRICTION_REPORTING_FEATURE,VIEWER_KEY_FEATURE,ARCHIVE_VIEW_FEATURE,STOCK_REMARKS_FEATURE,API_FEATURE,MAP_FEATURE
