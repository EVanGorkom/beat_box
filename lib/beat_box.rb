require './lib/node.rb'
require './lib/linked_list.rb'

class Beat_Box
    attr_accessor :list

    def initialize
        @list = LinkedList.new
    end
    
    def append(new_values)
        new_values_string = new_values
        temporary_array = new_values_string.split
        temporary_array.each do |value|
            
            if @head == nil
                @head = Node.new(value)
            else
                current_node = @head
                while current_node.next_node != nil
                    current_node = current_node.next_node
                end
                current_node.next_node = Node.new(value)
            end
            
            require 'pry';binding.pry
        end
        # then break the string apart into new instances to then be passed through the append method of 'linkedlist'
        # I need to be able to pass the arguments through the process of being appended one at a time

    end
end