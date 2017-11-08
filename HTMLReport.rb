# this is a concrete sublcass that includes the abstract class
class HTMLReport < Report

  # the methods below get called from the abstract class. If the abstract class calls
  # a method that is not listed below, then it looks in the abstract class for a matching method
  def output_start
    puts('<html>')
  end

  def output_head
    puts(' <head>')
    puts("<title>#{@title}</title")
    puts('</head>')
  end

  def output_body_start
    puts('<body>')
  end

  def output_line(line)
    puts("<p>#{line}</p>")
  end

  def output_body_end
    puts('</body>')
  end

  def output_end
    puts('</html>')
  end

end