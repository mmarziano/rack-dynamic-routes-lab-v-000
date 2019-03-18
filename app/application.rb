class Application 
  
 @@items = []
 
 def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match(/items/) 
    item = req.path.split("/items/").last
    if @@items.find do |i|
      i.name == item 
      resp.write i.price 
    end 
  else 
    resp.write "Route not found"
    resp.status = 404
    #binding.pry
  else req.path.include?("/items")
      
      if @@items.find do |i| 
        i.name == param
        resp.write i.price
        end 
      end
        end 
    end

  #resp.finish
end 