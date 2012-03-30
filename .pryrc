Pry.config.editor = "gvim --remote-silent"

Pry.prompt = Proc.new{ |obj, nest_level| "#{">"*nest_level}pry(#{obj}##{obj.class}) $ " }

%w(hirb).each { |gem| require gem }

require 'hirb'

Hirb.enable

old_print = Pry.config.print
Pry.config.print = proc do |output, value|
  Hirb::View.view_or_page_output(value) || old_print.call(output, value)
end

include Rails::ConsoleMethods if defined? Rails
