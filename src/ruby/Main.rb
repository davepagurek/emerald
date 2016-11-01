#!/usr/bin/env ruby

require_relative 'Grammar'
require_relative 'PreProcessor'


# TODO: add command line arguments.
# - b --beautify (format the html - minified by default)
# - p --source_path (source destination to write file to)

# Parses a context free grammar from the preprocessed emerald and generates
# html associated with corresponding abstract syntax tree.
class Main
  preprocessed_emerald = PreProcessor.process_emerald()
  abstract_syntax_tree = Grammer.parse_grammar(preprocessed_emerald)
  out = abstract_syntax_tree.to_html("")
  puts out
  File.open("sample.html", "w") do |file|
    file.write(out)
  end
end