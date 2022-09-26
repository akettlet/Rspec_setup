require 'counter'

RSpec.describe Counter do
  it "it reports zero if nothing added" do
    count_number = Counter.new
    result = count_number.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "it reports a number if added" do
    count_number = Counter.new
    count_number.add(5)
    result = count_number.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "it reports the total of all numbers added" do
    count_number = Counter.new
    count_number.add(5)
    count_number.add(15)
    count_number.add(-5)
    result = count_number.report
    expect(result).to eq "Counted to 15 so far."
  end
end
