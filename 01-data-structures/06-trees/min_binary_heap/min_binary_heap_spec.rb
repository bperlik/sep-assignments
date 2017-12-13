include RSpec

require_relative 'min_binary_heap'

RSpec.describe MinBinaryHeap, type: Class do
  let (:root) { Node.new("The Wizard of Oz", 87) }
  let (:tree) { MinBinaryHeap.new(root) }
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

   describe "#initialize" do
    it "sets @root to passed node" do
      tree = MinBinaryHeap.new(root)
      expect(tree.items[0]).to eq root
    end
  end

  describe "#insert" do
    it "replaces the root if lower rating" do
      tree.insert(matrix)
      expect(tree.items[0]).to eq matrix
    end

    it "adds everything properly" do
      tree.insert(mad_max)
      tree.insert(terminator)
      tree.insert(matrix)
      tree.insert(mad_max_2)
      tree.insert(jedi)
      tree.insert(back)
      tree.insert(force_awakens)
      tree.insert(empire)
      tree.insert(ghostbusters)
      tree.insert(groundhog)
      tree.insert(hope)

      expect(tree.items[0]).to eq mad_max
      expect(tree.items[tree.items.size - 1]).to eq terminator
    end
  end

  describe "#find" do
    it "returns correct node" do
      tree.insert(mad_max)
      tree.insert(terminator)
      tree.insert(matrix)

      expect(tree.find("Mad Max: Fury Road")).to eq mad_max
    end

    it "returns nil if not added" do
      tree.insert(ghostbusters)
      tree.insert(groundhog)
      tree.insert(hope)

      expect(tree.find("The Matrix")).to be_nil
    end
  end

  describe "#print" do
     specify {
       expected_output = "Mad Max: Fury Road: 72\nThe Matrix: 78\nStar Wars: Return of the Jedi: 80\nThe Wizard of Oz: 87\nGhostbusters: 90\nMad Max 2: The Road Warrior: 94\nStar Wars: The Empire Strikes Back: 86\nBack to the Future: 93\nGroundhog Day: 91\nStar Wars: A New Hope: 92\nThe Terminator: 98\n"
       tree.insert(back)
       tree.insert(mad_max_2)
       tree.insert(jedi)
       tree.insert(hope)
       tree.insert(mad_max)
       tree.insert(empire)
       tree.insert(matrix)
       tree.insert(groundhog)
       tree.insert(ghostbusters)
       tree.insert(terminator)
       expect { tree.print }.to output(expected_output).to_stdout
     }
  end

  describe "#parent" do
    it "returns 6 for 13 or 14" do
      expect(tree.parent(13)).to eq 6
      expect(tree.parent(14)).to eq 6
    end

    it "returns 0 for 1 or 2" do
      expect(tree.parent(1)).to eq 0
      expect(tree.parent(2)).to eq 0
    end
  end

  describe "#find_index" do
    it "returns correct index" do
      tree.insert(hope)
      expect(tree.find_index("Star Wars: A New Hope")).to eq 1
    end
  end

  describe "#left and #right" do
    it "returns left and right indices" do
      tree.insert(back)
      tree.insert(mad_max_2)
      expect(tree.left_or_right_index(0, "left")).to eq 1
      expect(tree.left_or_right_index(0, "right")).to eq 2

      tree.insert(jedi)
      tree.insert(force_awakens)
      expect(tree.left_or_right_index(1, "left")).to eq 3
      expect(tree.left_or_right_index(1, "right")).to eq 4
    end

    it "returns nil if no left or right" do
      expect(tree.left_or_right_index(0, "left")).to eq nil
      expect(tree.left_or_right_index(0, "right")).to eq nil
    end
  end

  describe "#delete" do
    it "deletes correct node" do
      tree.insert(matrix)
      expect(tree.items[0]).to eq matrix
      tree.delete("The Matrix")
      expect(tree.items[0]).to eq root

      tree.insert(matrix)
      tree.delete("The Wizard of Oz")
      expect(tree.items[0]).to eq matrix
    end

    it "reorganizes correctly" do
      tree.insert(empire)
      tree.insert(force_awakens)
      tree.insert(matrix)
      tree.insert(mad_max_2)
      tree.insert(terminator)

      expect(tree.items[1]).to eq force_awakens

      tree.delete("Star Wars: The Force Awakens")

      expect(tree.find("Star Wars: The Force Awakens")).to be_nil
      expect(tree.items[1]).to eq root
      expect(tree.items[tree.left_or_right_index(1, "left")]).to eq terminator
      expect(tree.items[tree.left_or_right_index(1, "right")]).to eq mad_max_2

      tree.delete("Star Wars: The Empire Strikes Back")

      expect(tree.items[2]).to eq mad_max_2
    end
  end
end
