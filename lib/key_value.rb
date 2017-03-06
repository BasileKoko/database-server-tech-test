class KeyValue
  attr_reader :data_array



    def store(pair)
       @data_array = []
      @data_array << Hash[[pair.split("=")]]
    end

    def retrieve(key)
      data_array.map {|el| el["#{key}"]}.join
    end
end
