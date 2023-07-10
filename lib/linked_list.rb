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
        list_string = ""
        add_comma = ", "

        while (current_node != nil)
            if current_node.next_node == nil
                list_string << current_node.data
            else
                list_string << current_node.data + add_comma
            end
            current_node = current_node.next_node
        end
        list_string
    end

    def prepend(new_value)        
        old_head_next = @head.next_node #saving the original head's "next" value as a variable to link to the rest of the list after we establish the new head
        
        new_head = Node.new(new_value) #new head value
        old_head = Node.new(@head.data) #saving the old head's value without overwriting the @head value
        new_head.next_node = old_head #establishing the "next" value of the new head as the original head
        @head = new_head # reassigning the @head attribute to our new value
        old_head.next_node = old_head_next #linking the rest of the list back together
    end

end 