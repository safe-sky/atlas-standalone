#!/bin/bash

if [ $# -eq 0 ]; then
    >&2 echo "Aerodrome configuration: no arguments provided while an admin token is required."
    exit 1
fi;

identifier="ZZZZ"
iata="ARN"
icao="ESSA"
descr="Demo (ARN-like)"
features="ARCHIVE_VIEW_FEATURE,\
ATIS_REPORTING_FEATURE,\
DESKTOP_UI_FEATURE,\
FRICTION_REPORTING_FEATURE,\
SEND_RCR_FEATURE,\
SEND_SMS_FEATURE,\
STOCK_REMARKS_FEATURE"

docker exec -ti atlas-demo atlascmd --atlas-token="$1" --atlas-host="localhost:3840" \
    aerodrome create "$identifier" \
    --iata "$iata" \
    --rwy 01L-19R:3301/45/Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10 \
    --rwy 08-26:2500/45/X2,X3,X5 \
    --rwy 01R-19L:2500/45/W1,W2,W3,W4,W5,W6,W7,W8 \
    --aprs G,F,FA,AB,BC,CD,D,E,R,H,J,K,L,M,S \
    --twys "Y,PA,X,Z,D,W,U,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,X2,X3,X5,W1,W2,W3,W4,W5,W6,W7,W8,UG,UF,M,SC,ZE,ZF,ZG,ZH,ZJ,ZK,ZL,ZM,ZN,ZP,ZQ,ZS,ZT,JV,KW,LY,UA,UB,UC,UD,UE,EA,S,A SOUTH OF 05-23,A NORTH OF 05-23" \
    --features "$features" \
    --map /etc/atlas/arn.json \
    --metar "$icao" \
    --description "$descr" \
    1> /dev/null
