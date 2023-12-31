Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "*"
        resource "*",
        headers: :any,
        methods: %i[post put patch get delete options heads]
    end
end