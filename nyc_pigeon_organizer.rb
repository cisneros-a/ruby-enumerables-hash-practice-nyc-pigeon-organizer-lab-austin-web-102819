def nyc_pigeon_organizer(data)
    final = {}
    data.each do |first_level, all_other|
        all_other.each do |categorys, array|
            array. each do |names|
                final[names] = {color: [], gender: [], location: []}
            end
        end
    end
    x = final.keys
    data[:color].each do |bird_color, names|
        names.each do |bird_name|
            x.each do |item|
                if bird_name == item
                    final[item][:color] << bird_color.to_s
                end
            end
        end
    end
    data[:gender].each do |bird_gender, names|
        names.each do |bird_name|
            x.each do |item|
                if bird_name == item
                    final[item][:gender] << bird_gender.to_s
                end
            end
        end
    end
    data[:lives].each do |bird_lives, names|
        names.each do |bird_name|
            x.each do |item|
                if bird_name == item
                    final[item][:location] << bird_lives.to_s
                end
            end
        end
    end
end
