Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

clothing = Spree::TaxCategory.find_by_name!("Clothing")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  :description => Faker::Lorem.paragraph,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "It's gonna be a tough sell!",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => "The fashion shoot had signs that it was going off the rails yet he persists into the unknown. Forging ahead just like every other day."
  },
  {
    :name => "Good stuff!",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => "Stuff is good. Stuffing stuff so good." 
  },
  {
    :name => "I have a history of this.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "Once we get to the beach it's all business from here on out. Just another day at the beach. We have to be prepared for the worst this fashion shoot could get ugly, and lets just leave it at that."
  },
  {
    :name => "Unfortunate, based on limited reason.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "And that's how the cookie crumbles."
  },
  {
    :name => "Ok, you get the point.",
    :shipping_category => shipping_category,
    :tax_category => clothing,
    :price => 19.99,
    :eur_price => 16,
    :description => "Clothing can't be worn like flowers, too bad:("
  },
  {
    :name => "It's what you wear.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I have no idea how these things(clothes) work beyond putting them on one leg at a time."
  },
  {
    :name => "So difficult to choose, with so many choices.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description: => "Let's do some AB testing and figure this out."
  },
  {
    :name => "Whoah, didn't see that coming.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "Pick yourself up and get back to that fashion shoot. You got to own it. Shake it don't break it!"
  },
  {
    :name => "A proposal for exchange.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I'll hit this hard!"
  },
  {
    :name => "Let your freak flag fly.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I'll hit this hard!"
  },
  {
    :name => "I got it, you want it!",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => "Let's just admit it, I have no business in a fashion shoot, but I can put a product in a view. Shoot!"
  },
  {
    :name => "For real.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => "Trade up!" 
  },
  {
    :name => "Retro rock t-shirts aren't going to cut it!",
    :shipping_category => shipping_category,
    :price => 13.99,
    :eur_price => 12,
    :description => "I promise I won't stand on your desks."
  },
  {
    :name => "I hear a cello in the background.",
    :shipping_category => shipping_category,
    :price => 16.99,
    :eur_price => 14,
    :description => "In all it's various forms fashion is ultimately about communication, and quite frankly some of us need help to deliver our message."
  },
  {
    :name => "I rest my case.",
    :shipping_category => shipping_category,
    :price => 16.99,
    :eur_price => 14,
    :description => "In all it's various forms fashion is ultimately about communication, and quite frankly some of us need help to deliver our message."
  }
]

products.each do |product_attrs|
  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "EUR"
  product.reload
  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"
