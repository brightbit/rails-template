namespace :test do
  desc "Run environment tests for each environment"
  task environments: :environment do
    Dir[File.expand_path('test/environments/*.rb', Rails.root)].each do |f|
      system("ruby -Itest -Iconfig/environments #{f}")
    end
  end
end
