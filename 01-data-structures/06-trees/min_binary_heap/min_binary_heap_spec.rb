include RSpec

require_relative 'min_binary_heap'

RSpec.describe MinBinaryHeap, type: Class do
  let (:root) { Node.new("The Wizard of Oz", 95) }
  let (:tree) { MinBinaryHeap.new(root) }
  let (:mad_max) { Node.new("Mad Max: Fury Road", 97) }
  let (:matrix) { Node.new("The Matrix", 98) }
  let (:jedi) { Node.new("Star Wars: Return of the Jedi", 94) }
  let (:force_awakens) { Node.new("Star Wars: The Force Awakens", 93) }
  let (:empire) { Node.new("Star Wars: The Empire Strikes Back", 92) }
  let (:ghostbusters) { Node.new("Ghostbusters", 99) }
  let (:groundhog) { Node.new("Groundhog Day", 96) }
  let (:hope) { Node.new("Star Wars: A New Hope", 90) }
  let (:back) { Node.new("Back to the Future", 91) }
  let (:mad_max_2) { Node.new("Mad Max 2: The Road Warrior", 89) }
  let (:terminator) { Node.new("The Terminator", 100) }
  let (:young) { Node.new("Young Frankenstein", 87) }

  describe "initialization" do
    it "sets root to passed node" do
      tree = MinBinaryHeap.new(root)
      expect(tree.items[0].to eq root
    end
  end

  describe "insert" do
    it "replaces root if the rating is lower" do
      tree.insert(young)
      expect(tree.items[0].to eq young
    end

    it "adds other nodes correctly" do
      tree.insert(mad_max)
      tree.insert(matrix)
      tree.insert(jedi)
      tree.insert(force_awakens)
      tree.insert(empire)
      tree.insert(ghostbusters)
      tree.insert(groundhog)
      tree.insert(hope)
      tree.insert(back)
      tree.insert(mad_max_2)
      tree.insert(terminator)
      tree.insert(young)
    end
  end
end

