# encoding: UTF-8
namespace :data  do
  desc "Insert locations"
  task :locations => :environment do
    @locations = ["Linke Seite", "Rechte Seite", "Ganzer Kopf", "Vorderkopf", "Hinterkopf", "Hinter linkem Auge", "Hinter rechtem Auge", "Hinter linkem Ohr", "Hinter rechtem Ohr"]
    @locations.each do |location|      
      Location.new(:title => location).save
    end
  end

  desc "Insert Triggers"
  task :triggers => :environment do
    @triggers = ["Alkohol", "Allergien", "Überanstrengung", "Essen", "Medikamente", "Menstruation", "Krankheit", "Schlaf / Schlafstörung", "Rauchen", "Stress", "Wetter"]
    @triggers.each do |trigger|      
      Trigger.new(:title => trigger).save
    end
  end

  desc "Insert Medis"
  task :medications => :environment do
    @medications = ["Azetylsalicylsäure", "Paracetamol", "Ibuprofen", "Aspirin", "Formigran"]
    @medications.each do |medi|      
      Medication.new(:title => medi).save
    end
  end

end


