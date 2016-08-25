class School < ActiveRecord::Base
  has_one :academic, dependent: :destroy
  has_one :admission, dependent: :destroy
  has_one :aid, dependent: :destroy
  has_one :completion, dependent: :destroy
  has_one :cost, dependent: :destroy
  has_one :earning, dependent: :destroy
  has_one :repayment, dependent: :destroy
  has_one :student, dependent: :destroy

  has_many :reviews

  has_many :bookmarks

  has_many :users, through: :bookmarks

  def get_map_url
    response = get_coords_from_location
		"https://maps.googleapis.com/maps/api/staticmap?center=#{response["lat"]},#{response["lng"]}&zoom=15&size=400x400&key=AIzaSyDTLUeLPMNZy4Gw99gQNFF6d1gyDbukKmg"

  end

  def get_street_view
    response = get_coords_from_location
    "https://maps.googleapis.com/maps/api/streetview?size=400x400&location=#{response["lat"]},#{response["lng"]}&fov=90&heading=235&pitch=10&key=AIzaSyDzAzsvsSRGmqNCzBALyd8ISPylRAn5-mg"
  end

  def get_coords_from_location
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{urlify(school_name)},#{urlify(location)}&key=AIzaSyBi_LAVQdQK86p7BcCxTxYuPr1lKVC5HAw"
     response = HTTParty.get(url, verify: false)["results"]
    if response.empty?
      return { "lat" => 34.138792, "lng" => -118.125407 }
    else
      return response.first["geometry"]["location"]
    end
  end

  def urlify(location)
    location.gsub(" ", "+")
  end

	def location
   "#{school_city}, #{school_state}"
	end


	def urlify(location)
   location.gsub(" ", "+")
	end


	def popular_subjects
   attribs = academic.attributes
   attribs = attribs.delete_if { |k, v| k == "created_at" || k == "school_id" || k == "updated_at" || k == "id" }
   attribs = attribs.sort_by { |subject, percent| percent }.reverse[0..9].to_h
   attrib_keys = attribs.map do |k, v|
     k.gsub("program_percentage_", "")
     k.gsub("_", " ")
     k.titleize
   end
   attrib_keys.zip(attribs.values).to_h
	end

  def self.index_search(params)
    school_name = params['school_name'] if params['school_name']
    region_id = params['school_region_id'].first.to_i if params['school_region_id']
    school_locale = params['school_locale'].first.to_i if params['school_locale']

<<<<<<< HEAD
    query = fuzzy_search_school(school_name) if school_name
    if query && school_locale
      query = query.where_school_locale_equals(school_locale)
    elsif school_locale
      query = where_school_locale_equals(school_locale)
    end

    if query && region_id
      query = query.where_region_id_equals(region_id)
    elsif region_id
      query = where_region_id_equals(region_id)
    end
    query
  end

  def self.where_school_locale_equals(school_locale)
    where('school_locale=?', school_locale)
  end

  def self.where_region_id_equals(region_id)
    where('school_region_id=?', region_id)
  end

  def self.fuzzy_search_school(query)
    query = '%' + query + '%'
    where("school_name ILIKE ?", query)
  end

=======
>>>>>>> c73ec96fbd39bdf7a67328c39c533a062a11ed32
end
