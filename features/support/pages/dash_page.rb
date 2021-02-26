class DashPage
  include Capybara::DSL

  def find_product
    find("input[id='search_query_top']").set "blouse"
    click_button "Search"
  end

  def add_to_cart
    find("img[title='Blouse']").click
    click_button "Add to cart"
  end

  def go_to_checkout
    click_on "Proceed to checkout"
  end

  def proceed_to_checkout
    click_on "Proceed to checkout"
  end

  def create_user
    find("input[id='email_create']").set Faker::Internet.free_email
    click_on "Create an account"

    find("input[id='id_gender1']").set true
    find("input[id='customer_firstname']").set Faker::Name.first_name
    find("input[id='customer_lastname']").set Faker::Name.last_name
    find("input[id='passwd']").set Faker::Number.number
    find(:select, "days").first(:option, "1").select_option
    find(:select, "months").first(:option, "January").select_option
    find("#uniform-years").find("option", text: "1991").select_option
    find("div[id='uniform-newsletter']").click
    find("div[id='uniform-optin']").click
    find("input[id='address1']").set Faker::Address.street_address
    find("input[id='city']").set Faker::Address.city
    find("#uniform-id_state").find("option", text: "California").select_option
    find("input[id='postcode']").set "00000"
    find("input[name='phone_mobile']").set Faker::PhoneNumber.cell_phone
    find("input[id='alias']").set Faker::Address.street_address
    click_button "Register"
  end
end
