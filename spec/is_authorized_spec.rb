RSpec.describe IsAuthorized do
  it "has a version number" do
    expect(IsAuthorized::VERSION).not_to be nil
  end

  it "returns true" do
    expect(is_authorized?(1,1)).to eq(true)
  end

  it "returns false" do
    expect(is_authorized?(1,2)).to eq(false)
  end  
end
