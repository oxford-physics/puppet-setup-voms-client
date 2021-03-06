#
#
#
module Puppet::Parser::Functions
  newfunction(:replace_dot_to_underscore, :type => :rvalue, :doc => <<-'ENDOFDOC'
 This function takes an array or single value of string and replace '.' with '_' and return an converted array
ENDOFDOC
  ) do |arguments|

    require 'rubygems'
    vo_list = arguments[0]
    converted_vo = Array.new()
    vo_list.each do |vo|
      x = vo.gsub(/\./, '_')
      converted_vo.push(x)
    end
    return converted_vo
  end
end
