# this is a concrete sublcass that includes the abstract class
class PlainTextReport < Report

  # the methods below get called from the abstract class. If the abstract class calls
  # a method that is not listed below, then it looks in the abstract class for a matching method
  def output_head
    puts("*** #{@title} ***")
    puts
  end

  def output_line(line)
    puts(line)
  end

end