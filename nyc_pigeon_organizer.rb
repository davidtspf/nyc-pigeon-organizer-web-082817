
def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}

    pigeon_data.each do |aspect, feature|
      #color, gender, lives; the hash
      feature.each do |feature_key, names|
        #purple; ["Theo", "Peter Jr.", "Lucky"]
        names.each do |name|

        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

        if !pigeon_list[name].has_key?(aspect)
          pigeon_list[name][aspect] = []
        end

        if !pigeon_list[name][aspect].include?(feature_key)
          pigeon_list[name][aspect] << feature_key.to_s
        end

      end
    end
  end
  pigeon_list
end


# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
#
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
