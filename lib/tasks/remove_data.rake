# encoding: UTF-8
namespace :data  do
  desc "Remove wrong entries locations"
  task :remove_unused => :environment do
    @entries = Entry.where(:start_pit => nil)
    @entries.each do |entry|
      entry.destroy
    end
  end

end


