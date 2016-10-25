require 'treetop'
require_relative 'Node'

class Root < Node
  def to_html
    elements.each do |e|
      if e.is_a?(Node)
        e.to_html()
      end
    end
  end
end
