# ruby 3.4 이미지 사용
FROM ruby:3.4

# 필요한 OS 패키지 설치 (PostgreSQL dev 라이브러리 포함)
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /myapp

# Gemfile과 Gemfile.lock을 먼저 복사해서 의존성 캐싱
COPY Gemfile Gemfile.lock ./

# Gem 설치
RUN bundle install

# 나머지 앱 파일 복사
COPY . .

# 포트 설정
EXPOSE 3000

# 서버 실행 명령
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0 -p 3000"]
