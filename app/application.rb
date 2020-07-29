class Application 
    def call(env)
        resp = Rack::Response.new 
        time_right_now = Time.now 

    if time_right_now.hour > 12 
        resp.write "Good Afternoon!"
    else 
        resp.write "Good Morning!"
    end
    resp.finish 
end 
end 