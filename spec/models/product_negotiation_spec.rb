require 'rails_helper'
RSpec.describe ProductNegotiation, type: :model do
    let(:user1) { create :user }
    let(:user2) { create :user }
    let(:product1) { create :product, user: user1}

    let(:product_negotiation1) { create :product_negotiation, user: user2, product: product1 }

      describe "Product negotiation relations" do
        it "has a user/buyer" do
          expect(product_negotiation1.user).to eq(user2)
        end

        it "has a productowner/seller" do
          expect(product_negotiation1.product.user).to eq(user1)
        end
      end

      describe "Singlebids"
        it "ProductNegotiation contains multiple SingleBids"
        it "Last Singlebids is a counteroffer"
end
