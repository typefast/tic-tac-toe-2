require "spec_helper"

describe Array do
  context "#all_empty?" do 
    it "returns true if all elements of the array are empty" do 
      expect(["", "", ""].all_empty?).to eq(true)  
    end
    
    it "returns false if some of the array elements are not empty" do 
      expect(["", 1, "", Object.new, :a].all_empty?).to eq(false)
    end
    
    it "returns true for an empty array" do 
      expect([].all_empty?).to eq(true)
    end
  end
  
  context "#all_same?" do 
    it "returns true if all elements of the array are the same" do 
      expect(["A", "A", "A"].all_same?).to eq(true)
    end
    
    it "returns false if some of the array elements are not the same" do 
      expect(["", "1", "", Object.new, :a].all_same?).to eq(false)
    end
    
    it "returns true for an empty array" do 
      expect([].all_same?).to eq(true)
    end
  end
  
  context "#any_empty?" do 
    it "returns true if any array elements are empty" do 
      expect([].any_empty?).to eq(true)
    end
  end
  
  context "#none_empty?" do 
    it "Should return true is the array is not empty" do 
      expect(["X", "O", "X"].none_empty?).to eq(true)
    end
    
    it "should return false if some of the array elements are empty" do 
      expect([].none_empty?).to eq(false)
    end
  end
  
end









