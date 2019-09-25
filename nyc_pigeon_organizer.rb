require "pry"

def nyc_pigeon_organizer(cart)
  final_hash={}
  cart.each do |color_gender_lives, val_of_col_gend|
    val_of_col_gend.each do |colors_item, arr|
      arr.each do |person_name|
        if cart[color_gender_lives][colors_item].include?(person_name)
         final_hash["#{person_name}"]={
           "#{color_gender_lives}": []
         }
         final_hash[person_name][color_gender_lives] << "#{colors_item}"
        elsif !cart[color_gender_lives][colors_item].include?(person_name)
          final_hash["#{person_name}"]={
            "#{color_gender_lives}": ["#{colors_item}"]
          }
        #  binding.pry
        end
      end
    end
  end
  final_hash
end