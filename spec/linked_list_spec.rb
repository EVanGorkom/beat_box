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
        # need to modify this area

        expect(list.append("doop")).to eq("doop")
    end

end