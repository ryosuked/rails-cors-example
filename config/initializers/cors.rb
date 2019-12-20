Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    hosts = ['localhost:3000', 'localhost:9000']# '*'
    puts "hosts = #{hosts}"
#    origins hosts #['localhost:3000']#, 'localhost:9000', 'mail.google.com'
    origins { |source, env|
      puts "true"
      true
    }

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      debug: true,
      credentials: true
  end
end
