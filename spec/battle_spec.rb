require 'battle'
# battle class spec
describe Battle do

subject (:battle) { described_class.new }

  describe "#initialization" do
    it 'should be an instance of battle' do
      
      expect(subject).to be_an_instance_of(Battle)
    end

    # xit 'should respond to two arguments' do
    #   #expect(subject).to respond_to(:new).with(2).arguments
    # end
  end

end
