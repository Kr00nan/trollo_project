require 'rails_helper.rb'

RSpec.describe Board, type: :model do
  describe 'attributes' do
    it { should respond_to :name }
  end
end