require "rspec"
require "./lib/node.rb"
require "./lib/linked_list.rb"

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end

    it "has readable attributes" do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it "can append a new piece of data to the list" do
        list = LinkedList.new
        list.append("doop")

        expect(list).to be_a(LinkedList)
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end

end