class Application

  def call(env)
    resp = Rack::Response.new

          now = Time.now
          set_time = Time.new(2020, 07, 22, 12, 0, 0)
         if set_time > now
            resp.write "Good Morning!"
          elsif set_time < now
            resp.write "Good Afternoon!"
          end
          resp.finish
        end
      end
  end
