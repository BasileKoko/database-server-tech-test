class KeyValue

    def self.store(pair)
       @data_array = []
       @data_array << Hash[[pair.split("=")]]
    end

    def self.retrieve(key)
      @data_array.map {|el| el["#{key}"]}.join
    end
end
