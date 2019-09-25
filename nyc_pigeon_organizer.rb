require "pry"

def pigeon_data(cart)
  final_hash={}
  cart.each do |color_gender_lives, values1|
    values1.each do |colors_items, arr|
      arr.each do |name|
         if final_hash[name]
          if final_hash[name][color_gender_lives]
            final_hash[name][color_gender_lives] << colors_items.to_s
          else
            final_hash[name][color_gender_lives] = colors_items
          end
        else
          final_hash[name]={
            color_gender_lives => [colors_items.to_s]
          }
         end
      end
      end
    end
    final_hash
end