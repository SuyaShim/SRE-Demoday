#!/bin/bash

HOST="https://demoday-a.dev-k8s.arkain.io"
USERS=1000
SPAWN_RATE=1000
RUN_TIME="10m"

if [ ! -d "venv" ]; then
    python3 -m venv venv
    source venv/bin/activate
    pip install locust
else
    # 가상환경 활성화
    source venv/bin/activate
fi

locust -f locust.py -H $HOST -u $USERS -r $SPAWN_RATE -t $RUN_TIME