class ErrJob
  include Sidekiq::Job
  sidekiq_options retry: 2

  # sidekiq_retry_in do |exception|

  #   binding.pry
  #   case exception
  
  #   when 0
  #     puts "###################### Finally Saved! ###################### "
  #   end
  # end

  def perform(complexity)
    case complexity
    when "super_hard"

      #begin
      sleep 10
      puts "################"
      puts "################"
      #binding.pry
      raise "###################### failure ##############"
       #rescue    
      puts "###################### Finally Saved! ###################### "
      
      puts "Executing Super Hard"
      puts "################"
      puts "################"
    #end
    when "hard"
      sleep 10
      puts "################"
      puts "################"
      puts "Executing Hard"
      puts "################"
      puts "################"
    when "Easy"
      sleep 1
      #binding.pry
      puts "################"
      puts "################"
      puts "Executing Easy"
      puts "################"
      puts "################"
    end
    # Do something
  end
end
