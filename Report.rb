# This is the abstract class that gets included in the subclasses
class Report

  def initialize
    @title = 'Monthly Report'
    @text = ['Things', 'Are', 'Great']
  end

  # this is the skeltal structure that calls the abstract classes, which calls the methods in the subclasses
  # that define the behavior
  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  # below are abstract methods that get overidden by the concrete subclass if the subclass has a matching
  # element, and if not, then the abstract methods are used
  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_start
  end

  def output_head
    raise 'Called abstract method: output_head'
  end

  def output_body_start
  end

  def output_line(line)
    puts("<p>#{line}</p>")
  end

  def output_body_end
  end

  def output_end
  end

end
