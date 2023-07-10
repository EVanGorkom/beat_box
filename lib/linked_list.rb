require './lib/node.rb'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(new_value)
        if @head == nil
            @head = Node.new(new_value)
        else
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = Node.new(new_value)
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
        add_space = " "

        while (current_node != nil)
            if current_node.next_node == nil
                list_string << current_node.data
            else
                list_string << current_node.data + add_space
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

    def insert(start_value, new_value)
        inserted_node = Node.new(new_value)
        if start_value == 0
            require 'pry';binding.pry
            inserted_node.next_node = @head
            @head = inserted_node
        elsif
            current_node = @head
            start_value == 1
            inserted_node.next_node = current_node.next_node
            current_node.next_node = inserted_node    
        elsif
            (start_value - 1).times do
            inserted_node.next_node = current_node.next_node
            current_node.next_node = inserted_node
            end
        end 
    end

#     def find(start_value, num_of_returns)
#         #needs the same count tracking strat from above
#     end

#     def pop
#         current_node = @head
#         until current_node.next_node == nil
#             current_node = current_node.next_node
#         end
#         current_node.data = nil
#     end

#     def includes?(value)
#         current_node = @head
#         until current_node == value
#             current_node = current_node.next_node
#             if current_node == value
#                 true
#             else
#                 false
#             end
#         end
#     end
end 