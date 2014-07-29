describe GschoolEnumerable do

  before(:each) do
    Array.include GschoolEnumerable
  end

  describe "#g_each" do
    it "yields each element to the block in the same order" do
      yielded = []

      [1, 2, 3].g_each { |value| yielded << value }

      expect(yielded).to eq([1, 2, 3])
    end
  end

  describe "#g_select" do
    it "acts like select" do
      skip
      values = [1, 2, 3].g_select { |value| value % 2 == 0 }

      expect(values).to eq([2])
    end
  end

  describe "#g_map" do
    it "acts like map" do
      skip
      values = [1, 2, 3].g_map { |value| value * 2 }

      expect(values).to eq([2, 4, 6])
    end
  end
end