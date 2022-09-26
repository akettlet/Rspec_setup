require 'string_builder'

RSpec.describe StringBuilder do
  it "it reports zero length if nothing added" do
    builder = StringBuilder.new
    expect(builder.size).to eq 0
  end

  it "it outputs "" if nothing added" do
    builder = StringBuilder.new
    expect(builder.output).to eq ""
  end

  it "it reports a length if string added" do
    builder = StringBuilder.new
    builder.add("Hello")
    expect(builder.size).to eq 5
  end

  it "it outputs the string if string added" do
    builder = StringBuilder.new
    builder.add("Hello")
    expect(builder.output).to eq "Hello"
  end

  it "it reports the total length if strings added" do
    builder = StringBuilder.new
    builder.add("Hello")
    builder.add(" World!")
    expect(builder.size).to eq 12
  end

  it "it outputs the total string if strings added" do
    builder = StringBuilder.new
    builder.add("Hello")
    builder.add(" World!")
    expect(builder.output).to eq "Hello World!"
  end
end
