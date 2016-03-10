require 'byebug'
 
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
    :description => "The fashion shoot had signs that it was going off the rails yet he persists into the unknown. Forging ahead just like every other day.",
    :slug => "001"
  },
  {
    :name => "Good stuff!",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => "Stuff is good. Stuffing stuff so good.",
    :slug => "002"
  },
  {
    :name => "I have a history of this.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "Once we get to the beach it's all business from here on out. Just another day at the beach. We have to be prepared for the worst this fashion shoot could get ugly, and lets just leave it at that.",
    :slug => "003"
  },
  {
    :name => "Unfortunate, based on limited reason.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "And that's how the cookie crumbles.",
    :slug => "004"
  },
  {
    :name => "Ok, you get the point.",
    :shipping_category => shipping_category,
    :tax_category => clothing,
    :price => 19.99,
    :eur_price => 16,
    :description => "Clothing can't be worn like flowers, too bad:(",
    :slug => "005"
  },
  {
    :name => "It's what you wear.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I have no idea how these things(clothes) work beyond putting them on one leg at a time.",
    :slug => "006"
  },
  {
    :name => "So difficult to choose, with so many choices.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "Let's do some AB testing and figure this out.",
    :slug => "007"
  },
  {
    :name => "Whoah, didn't see that coming.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "Pick yourself up and get back to that fashion shoot. You got to own it. Shake it don't break it!",
    :slug => "008"
  },
  {
    :name => "A proposal for exchange.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I'll hit this hard!",
    :slug => "009"
  },
  {
    :name => "Let your freak flag fly.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => "I'll hit this hard!",
    :slug => "010"
  },
  {
    :name => "I got it, you want it!",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => "Let's just admit it, I have no business in a fashion shoot, but I can put a product in a view. Shoot!",
    :slug => "011"
  },
  {
    :name => "For real.",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => "Trade up!",
    :slug => "012"
  },
  {
    :name => "Retro rock t-shirts aren't going to cut it!",
    :shipping_category => shipping_category,
    :price => 13.99,
    :eur_price => 12,
    :description => "I promise I won't stand on your desks.",
    :slug => "013"
  },
  {
    :name => "I hear a cello in the background.",
    :shipping_category => shipping_category,
    :price => 16.99,
    :eur_price => 14,
    :description => "In all it's various forms fashion is ultimately about communication, and quite frankly some of us need help to deliver our message.",
    :slug => "014"
  },
  {
    :name => "I rest my case.",
    :shipping_category => shipping_category,
    :price => 16.99,
    :eur_price => 14,
    :description => "In all it's various forms fashion is ultimately about communication, and quite frankly some of us need help to deliver our message.",
    :slug => "015"
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
 
products = {}
products[:"001"] = Spree::Product.find_by_slug!("001") 
products[:"002"] = Spree::Product.find_by_slug!("002")
products[:"003"] = Spree::Product.find_by_slug!("003")
products[:"004"] = Spree::Product.find_by_slug!("004")
products[:"005"] = Spree::Product.find_by_slug!("005")
products[:"006"] = Spree::Product.find_by_slug!("006")
products[:"007"] = Spree::Product.find_by_slug!("007")
products[:"008"] = Spree::Product.find_by_slug!("008")
products[:"009"] = Spree::Product.find_by_slug!("009")
products[:"010"] = Spree::Product.find_by_slug!("010")
products[:"011"] = Spree::Product.find_by_slug!("011")
products[:"012"] = Spree::Product.find_by_slug!("012")
products[:"013"] = Spree::Product.find_by_slug!("013")
products[:"014"] = Spree::Product.find_by_slug!("014")
products[:"015"] = Spree::Product.find_by_slug!("015")


def image(name, type="jpg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "samples/images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:"001"].master => [
    {
      :attachment => image("001")
    }
  ],
  products[:"002"].master => [
    {
      :attachment => image("002")
    }
  ],
  products[:"003"].master => [
    {
      :attachment => image("003")
    }
  ],
  products[:"004"].master => [
    {
      :attachment => image("004")
    }
  ],
  products[:"005"].master => [
    {
      :attachment => image("005")
    }
  ],
  products[:"006"].master => [
    {
      :attachment => image("006")
    }
  ],
  products[:"007"].master => [
    {
      :attachment => image("007")
    }
  ],
  products[:"008"].master => [
    {
      :attachment => image("008")
    }
  ],
  products[:"009"].master => [
    {
      :attachment => image("009")
    }
  ],
  products[:"010"].master => [
    {
      :attachment => image("010")
    }
  ],
  products[:"011"].master => [
    {
      :attachment => image("011")
    }
  ],
  products[:"012"].master => [
    {
      :attachment => image("012")
    }
  ],
  products[:"013"].master => [
    {
      :attachment => image("013")
    }
  ],
  products[:"014"].master => [
    {
      :attachment => image("014")
    }
  ],
  products[:"015"].master => [
    {
      :attachment => image("015")
    }
  ]
}

images.each do |variant, attachments|
  puts "Loading images for #{variant.product.name}"
  attachments.each do |attachment|
    variant.images.create!(attachment)
  end
end

