require('rspec')
require('title_case')

describe('String#title_case') do

  it("capitalizes the first letter of all words in a multiple word title") do
    expect(("color purple").title_case()).to(eq("Color Purple"))
  end

  it('does not capitalize designated words like prepositions, conjunctions, etc') do
    expect(("beowulf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end

  it("it capitalizes designated words if they are the first word") do
    expect(("the color purple").title_case()).to(eq("The Color Purple"))
  end

  it('manages all uppercase entries and mixed case entries') do
    expect(('BEOWULF ON THE ROCKS').title_case()).to(eq("Beowulf on the Rocks"))
  end

end
