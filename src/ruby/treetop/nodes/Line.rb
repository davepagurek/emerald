require 'treetop'
require_relative 'Node'

class Line < Node
  def to_html
    elements[0].to_html()
    elements[0].end_html()
  end
end