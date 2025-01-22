# Python 베이스 이미지 사용
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 파일 복사
COPY . /app

# 종속성 설치
RUN pip install --no-cache-dir -r requirements.txt

# Flask 실행 포트 설정
EXPOSE 5000

# 애플리케이션 실행
CMD ["python", "app.py"]
