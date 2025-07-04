# cors 설정 파일
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # 또는 'http://localhost:3000' 등
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
