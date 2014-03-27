require 'csv'

class Orders

def create_new_file
  new_file = File.new("./text_files/#{@id}.txt", "w")
  new_file.write(@contents)
  new_file.close
end

def build_contents
  @contents = <<-PARAGRAPH   
to: #{@email}

  Dear #{@name},
  Thank you for your purchase of #{@product}. 
  We hope you will buy again from us soon!
  
  Regards,
  #{@seller}
  PARAGRAPH
end

def read_file  
  CSV.foreach("./orders.csv", headers: true) do |row|
    @id = row[0]
    @email = row[1]
    @name = row[2]
    @product = row[3]
    @seller = row[5]
    build_contents
    create_new_file
  end

end
Orders.new.read_file
end












