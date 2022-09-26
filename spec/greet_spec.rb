require 'greet'

RSpec.describe "greet method" do
  it "returns greets the name given" do
    result = greet("Andy")
    expect(result).to eq "Hello, Andy!"
  end
end
