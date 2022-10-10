class CreateRecordJob
  include Sidekiq::Job
  #sidekiq_options retry: false

  def perform()
    # Do something
    #binding.pry
    puts "################"
    puts "################"
    puts "Record creating started..."
    product = Product.new(name:"first2")
    product.save
    puts 'Record creating end...'
    puts "################"
    puts "################"
  end
end
