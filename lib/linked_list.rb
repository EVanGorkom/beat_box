require './lib/node.rb'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
            @head = Node.new(data)
            # require 'pry';binding.pry
        else
            next_node = Node.new("#{data}")
        end

        # list = head + next_node
    end

end 