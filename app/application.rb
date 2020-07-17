class Application
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        
        if t.strftime('%H').to_i >= 12
            resp.write "Good afternoon!" 
        else
            resp.write "Good morning!"
        end

        resp.finish
    end
end