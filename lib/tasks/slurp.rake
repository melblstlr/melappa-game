namespace :slurp do
  desc "TODO"
  task challenges: :environment do
    require "csv"
    Challenge.delete_all
    csv_text = File.read(Rails.root.join("lib", "csvs", "challenge.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Challenge.new
      c.description = row["Description"]
      c.name = row["CName"]
      c.scoring = row["Scoring"]
      c.save
      puts "#{c.name} saved"
    end
    puts "There are now #{Challenge.count} rows in the challenge table"
  
  
  end

end