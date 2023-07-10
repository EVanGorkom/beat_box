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
end 

describe "#append" do
    it "can add another node to the list" do
        list = LinkedList.new
        list.append("doop")

        expect(list).to be_a(LinkedList)
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end
end

describe "#count" do
    it "can count the number of elements in the list" do
        list = LinkedList.new
        list.append("doop")

        expect(list.count).to eq(1)
    end 
end

describe "#to_string" do
    it "can turn the elements of the list into a single string" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.to_string).to eq("doop deep")
    end
end

describe "#prepend" do
    it "can add a new element to the beginning of the list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.to_string).to eq("dop plop suu")
    end
end

describe "#insert" do
    xit "can add a new node to the list at a designated location within the list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.insert(1, "woo")).to eq("dop woo plop suu")
    end
end