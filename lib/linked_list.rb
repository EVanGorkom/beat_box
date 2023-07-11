require './lib/node.rb'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(new_value)
        # add a new value to the end of the list
        if @head == nil
            @head = Node.new(new_value)
        else
            @head.next_node = Node.new(new_value)
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
        current_node = @head
        current_node.data
        # while (current_node != nil)
            
        #     puts current_node.data 
        #     current_node = current_node.next_node
        # end
    end

end 