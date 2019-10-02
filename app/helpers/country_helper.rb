module CountryHelper

  def list_countries_all
    @countries = Country.all
  end

end
