require 'rails_helper'
RSpec.describe ProdNeg, type: :model do
    let(:user1) { create :user }
    let(:user2) { create :user }
    let(:product1) { create :product, user: user1}

    let(:prod_neg1) { create :prod_neg, user: user2, product: product1 }

      describe "Product negotiation relations" do
        it "has a user/buyer" do
          expect(prod_neg1.user).to eq(user2)
        end

        it "has a productowner/seller" do
          expect(prod_neg1.product.user).to eq(user1)
        end
      end

      describe "Singlebids"
        it "ProdNeg contains multiple SingleBids"
        it "Last Singlebids is a counteroffer"
end
