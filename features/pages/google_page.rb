class GooglePage < SitePrism::Page
  set_url 'https://www.google.com/'

  element  :search_form, 'input.gLFyf'
  element  :button_search, '.gNO89b'

  def generate_user
    user = Array.new
    user = { :name => Faker::Name.name, :password => '123456', :email => Faker::Internet.email }
    user
  end
end