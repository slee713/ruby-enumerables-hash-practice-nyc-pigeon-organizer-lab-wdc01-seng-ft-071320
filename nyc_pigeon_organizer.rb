require 'pry'
def nyc_pigeon_organizer(data)
  # # write your code here!
#   names = []
#   categories = {}
#   color = {}
#   gender = {}
#   lives = {}
#   pigeon_list = {}
#
#   data.each do |key, value|
#     categories[key] = ""
#   end
#   binding.pry
#
#   data.each do |key, value|
#     if key == :color
#       color = value
#     elsif key == :gender
#       gender = value
#     else key == :lives
#       lives = value
#     end
#   end
# binding.pry
#
#   data.each do |key, value|
#     value.each do |inner_key, inner_value|
#       inner_value.each do |elements|
#         if names.include? elements
#         else
#           names.push(elements)
#         end
#       end
#     end
#   end
#
# binding.pry
#
#
#   names.each do |element|
#     pigeon_list[element]=""
#   end
#
#   pigeon_list.each do |key, value|
#     pigeon_list[key] = categories
#   end
#
#
# binding.pry

final_results = data.each_with_object({}) do |(key, value), final_array|
  value.each do |inner_key, names|
    names.each do |name|
      if !final_array[name]
        final_array[name] = {}
      end
      if !final_array[name][key]
        final_array[name][key]=[]
      end
      final_array[name][key].push(inner_key.to_s)
    end
  end
end
binding.pry

end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
