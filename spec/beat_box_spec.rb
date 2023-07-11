require "rspec"
require "./lib/node.rb"
require "./lib/linked_list.rb"
require "./lib/beat_box.rb"

RSpec.describe Beat_Box do
    it "exists" do
        bb = Beat_Box.new

        expect(bb).to be_an_instance_of(Beat_Box)
    end

    it "has readable attributes" do
        bb = Beat_Box.new

        expect(bb.list.head).to eq(nil)
    end
end 

describe "#append" do
    it "can append one or more elements into a corresponding amount of nodes for the list" do
        bb = Beat_Box.new
        bb.append("woo hoo shu")

        expect(bb.list.to_string).to eq("woo hoo shu")
    end
end