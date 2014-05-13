require_relative "my_solution"

describe 'acc_group' do
  let(:name_1) { ["Yariv", "Jake", "Christian", "Adrian", "Alan", "Ken", "Armen", "Drew", "RJ", "Gabe", "Antonio", "Ben", "Ian", "Sid", "Adam", "Lexie", "Stella", "Brendan", "Vivek", "Gregory", "Katie"]
 }
  let(:name_2) { ["Yariv", "Jake", "Christian", "Adrian", "Alan", "Ken", "Armen", "Drew", "RJ", "Gabe", "Antonio", "Ben", "Ian", "Sid", "Adam", "Lexie", "Stella", "Brendan", "Vivek", "Gregory"] }

  it "is defined as a method" do
    defined?(acc_group).should eq 'method'
  end

  it "requires a single argument" do
    method(:acc_group).arity.should eq 1
  end
end
