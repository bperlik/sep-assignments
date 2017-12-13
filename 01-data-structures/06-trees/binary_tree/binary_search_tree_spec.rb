include RSpec

require_relative 'binary_search_tree'

RSpec.describe BinarySearchTree, type: Class do
  let (:root) { Node.new("The Wizard of Oz", 87) }
  let (:tree) { BinarySearchTree.new(root) }
  let (:mad_max) { Node.new("Mad Max: Fury Road", 72) }
  let (:matrix) { Node.new("The Matrix", 78) }
  let (:jedi) { Node.new("Star Wars: Return of the Jedi", 80) }
  let (:force_awakens) { Node.new("Star Wars: The Force Awakens", 85) }
  let (:empire) { Node.new("Star Wars: The Empire Strikes Back", 86) }
  let (:ghostbusters) { Node.new("Ghostbusters", 90) }
  let (:groundhog) { Node.new("Groundhog Day", 91) }
  let (:hope) { Node.new("Star Wars: A New Hope", 92) }
  let (:back) { Node.new("Back to the Future", 93) }
  let (:mad_max_2) { Node.new("Mad Max 2: The Road Warrior", 94) }
  let (:terminator) { Node.new("The Terminator", 98) }

  describe "#insert(data)" do
    it "properly inserts a new node as a left child" do
      tree.insert(root, jedi)
      expect(root.left.title).to eq "Star Wars: Return of the Jedi"
    end

    it "properly inserts a new node as a left-left child" do
      tree.insert(root, jedi)
      tree.insert(root, force )
      expect(root.left.left.title).to eq "Star Wars: The Force Awakens"
    end

    it "properly inserts a new node as a left-right child" do
      tree.insert(root, jedi)
      tree.insert(root, groundhog)
      expect(root.left.right.title).to eq "Groundhog Day"
    end

    it "properly inserts a new node as a right child" do
      tree.insert(root, mad_max)
      expect(root.right.title).to eq "Mad Max: Fury Road"
    end

    it "properly inserts a new node as a right-left child" do
      tree.insert(root, mad_max)
      tree.insert(root, groundhog)
      expect(root.right.left.title).to eq "Groundhog Day"
    end

    it "properly inserts a new node as a right-right child" do
      tree.insert(root, groundhog)
      tree.insert(root, mad_max)
      expect(root.right.right.title).to eq "Mad Max: Fury Road"
    end
  end

  describe "#find(data)" do
    it "handles nil" do
      tree.insert(root, empire)
      tree.insert(root, mad_max_2)
      expect(tree.find(root, nil)).to eq nil
    end

    it "properly finds a left node" do
      tree.insert(root, young)
      expect(tree.find(root, young.title).title).to eq "Young Frankenstein"
    end

    it "properly finds a left-left node" do
      tree.insert(root, jedi )
      tree.insert(root, force)
      expect(tree.find(root, force.title).title).to eq "Star Wars: The Force Awakens"
    end

    it "properly finds a left-right node" do
      tree.insert(root, hope)
      tree.insert(root, back)
      expect(tree.find(root, back.title).title).to eq "Back to the Future"
    end

    it "properly finds a right node" do
      tree.insert(root, matrix)
      expect(tree.find(root, matrix.title).title).to eq "The Matrix"
    end

    it "properly finds a right-left node" do
      tree.insert(root, mad_max)
      tree.insert(root, groundhog)
      expect(tree.find(root, groundhog.title).title).to eq "Groundhog Day"
    end

    it "properly finds a right-right node" do
      tree.insert(root, mad_max)
      tree.insert(root, matrix)
      expect(tree.find(root, matrix.title).title).to eq "The Matrix"
    end
  end

  describe "#delete(data)" do
    it "handles nil" do
      expect(tree.delete(root, nil)).to eq nil
    end

    it "properly deletes a left node" do
      tree.insert(root, jedi)
      tree.delete(root, force.title)
      expect(tree.find(root, force.title)).to be_nil
    end

    it "properly deletes a right node" do
      tree.insert(root, mad_max)
      tree.delete(root, matrix.title)
      expect(tree.find(root, matrix.title)).to be_nil
    end

  describe "#printf" do
     specify {
       expected_output = "The Wizard of Oz: 87\nStar Wars: Return of the Jedi: 94\nStar Wars: A New Hope: 93\n"
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       expect { tree.printf }.to output(expected_output).to_stdout
     }

     specify {
       expected_output = "The Matrix: 87\nMad Max 2: The Road Warrior: 98\n"
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       tree.insert(root, )
       expect { tree.printf }.to output(expected_output).to_stdout
     }
   end
  end
end
