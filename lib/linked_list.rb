require './lib/node.rb'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            next_node = Node.new("#{data}")
        end
    end

    def count
        if @head == nil
            count = 0
        else
            count = 1
        end
        current_node = @head
        
        while current_node.next_node != nil
            count += 1
            current_node = current_node.next_node
        end
        count

    end

    def to_string

    end

end 