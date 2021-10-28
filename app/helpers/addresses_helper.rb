module AddressesHelper
  def format_address(add_obj)
    "#{add_obj.street} #{add_obj.city}, #{add_obj.state}, #{add_obj.country}, #{add_obj.zip_code}"
  end
end
