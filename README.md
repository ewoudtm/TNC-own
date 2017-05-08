# The Next Closet - Bidding feature
> Graduation Project

This project was a final assignment for four students of the 7th batch (March/April) of Codaisseur's Academy. This first real-life project was to add a bidding feature for the website of [The Next Closet](https://thenextcloset.com/).

This Rails application was made in 4,5 days and was set up from scratch (no code base was provided) and the following requirements:
Requirements:

- Seller can decide per product if offers are accepted for that item.
- Buyer can make only a price offer (so no text, just number).
- Offer cannot be lower than 70% of initial price (to prevent users sending ridiculous low offers).
- Minimum price of item is €20.
- If price offer of buyer is not possible (less than €20 or more than 70%) they see a feedback message.
- Offers are private and personally unique, so only buyer and seller can see it.
- Seller will receive an email notification that an offer has been made.
- Seller (and buyer) can accept, decline or make a counter offer.
- Offer is time bounded.
 Seller needs to responded within 48 hours on an (counter) offer.
 Buyer needs to responded within 48 hours on a counter offer.
 If seller and buyer come to an agreement the buyer has 24 hours to purchase the item for that specific price, else the offer expires.
- Seller and buyer can only make 3 times an offer, then they are blocked for making offers for this item (so they should be realistic in their offers and need to accept at some point).
- If they agreed on price, the price is automatically adjusted for this specific buyer.
- Only this buyer can purchase item for the offer price, other users see the normal price.
- Buyer and seller receive emails on these events (so if an offer is made etc.)
- There is a static page where this negotiation process is explained.
