
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { create :user }
  let(:user2) { create :user }
  let(:product1) { create :product, user: user1 }
  let(:product_negotiation1) { create :product_negotiation, user: user2 }



    describe "user knows about products" do
      it "knows the product he owns" do
        expect(user1.products).to include(product1)

      end
    end



end
