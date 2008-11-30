namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Recipient].each(&:delete_all)
    
    Recipient.populate 20 do |recipient|
      recipient.name = Faker::Name.name
      recipient.amount = 1..5
      recipient.period = "weekly"
      recipient.created_at = 2.months.ago..Time.now
    end
    
  end
end