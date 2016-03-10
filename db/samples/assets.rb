Spree::Sample.load_sample("products")
Spree::Sample.load_sample("variants")

products = {}
products[:1] = Spree::Product.find_by_slug!("001") 
products[:2] = Spree::Product.find_by_slug!("002")
products[:3] = Spree::Product.find_by_slug!("003")
products[:4] = Spree::Product.find_by_slug!("004")
products[:5] = Spree::Product.find_by_slug!("005")
products[:6] = Spree::Product.find_by_slug!("006")
products[:7] = Spree::Product.find_by_slug!("007")
products[:8] = Spree::Product.find_by_slug!("008")
products[:9] = Spree::Product.find_by_slug!("009")
products[:10] = Spree::Product.find_by_slug!("010")
products[:11] = Spree::Product.find_by_slug!("011")
products[:12] = Spree::Product.find_by_slug!("012")
products[:13] = Spree::Product.find_by_slug!("013")
products[:14] = Spree::Product.find_by_slug!("014")
products[:15] = Spree::Product.find_by_slug!("015")


def image(name, type="jpg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:1].master => [
    {
      :attachment => image("001")
    }
  ],
  products[:2].master => [
    {
      :attachment => image("002")
    }
  ],
  products[:3].master => [
    {
      :attachment => image("003")
    }
  ],
  products[:1].master => [
    {
      :attachment => image("004")
    }
  ],
  products[:5].master => [
    {
      :attachment => image("005")
    }
  ],
  products[:6].master => [
    {
      :attachment => image("006")
    }
  ],
  products[:7].master => [
    {
      :attachment => image("007")
    }
  ],
  products[:8].master => [
    {
      :attachment => image("008")
    }
  ],
  products[:9].master => [
    {
      :attachment => image("009")
    }
  ],
  products[:10].master => [
    {
      :attachment => image("010")
    }
  ],
  products[:11].master => [
    {
      :attachment => image("011")
    }
  ],
  products[:12].master => [
    {
      :attachment => image("012")
    }
  ],
  products[:13].master => [
    {
      :attachment => image("013")
    }
  ],
  products[:14].master => [
    {
      :attachment => image("014")
    }
  ],
  products[:15].master => [
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

