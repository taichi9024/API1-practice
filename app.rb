class App
    def call(env)
        status = 200
        headers = {"Content-Type" => "text/plain"}
        body= ["#{env.inspect}"]
        [status, headers, body]
    end
end