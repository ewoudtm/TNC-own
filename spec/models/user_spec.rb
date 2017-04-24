
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { create :user }
  let(:product1) { create :product, user: user1 }


    describe "user knows about products" do
      it "knows the day he's in" do
        expect(user1.products).to include(product1)

      end
    end
end
