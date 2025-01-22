# Base Python 이미지
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사
COPY ./todoapp ./todoapp
COPY requirements.txt requirements.txt

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 앱 실행 포트 노출
EXPOSE 5000

# 작업 디렉토리 진입
WORKDIR /app/todoapp

# 앱 실행 명령
CMD ["python", "app.py"]
