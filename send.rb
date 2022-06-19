# 'send' sends a message to an object instance and its ancestors in class hierarchy until some method reacts (because its name matches the first argument).

class Klass
  def hello(*args)
    "Hello " + args.join(' ')
  end
end
k = Klass.new
k.send :hello, "gentle", "readers"

# send :to_s    # "main"
# send :class   # Object