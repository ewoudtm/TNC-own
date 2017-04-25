require 'rails_helper'
RSpec.describe ProductNegotiation, type: :model do
    let(:user2) { create :user }
    let(:product_negotiation1) { create :product_negotiation, user: user2 }
      describe "Product negotiation relations" do
        it "has a user" do
          expect(product_negotiation1.user).to eq(user2)
        end
      end
end
