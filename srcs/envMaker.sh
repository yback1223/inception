#!/bin/bash

set -e

# .env 파일 경로 설정
ENV_FILE=".env"

# .env 파일 존재 확인
if [ ! -f "$ENV_FILE" ]; then
    echo "Error: .env 파일을 찾을 수 없습니다."
    exit 1
fi

# .env 파일에서 환경변수 읽어와 설정
while IFS='=' read -r key value; do
    if [[ -n $key && -n $value ]]; then
        export "$key=$value"
    fi
done < "$ENV_FILE"

echo ".env 파일로부터 환경변수가 설정되었습니다."

