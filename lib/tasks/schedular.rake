desc "This task is called by the Heroku cron add-on"
task :call => :environment do
   uri = URI.parse('http://fattiepupe.herokuapp.com/')
   Net::HTTP.get(uri)
   puts 'Called: ' + uri.to_s
end