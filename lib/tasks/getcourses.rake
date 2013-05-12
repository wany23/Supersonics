
namespace :Supersonics do
	desc "Import courses from csv file"
	task :getcourses => [:environment] do

		#file = "#{Rails.root}/courses.csv"
        require 'csv'

    		CSV.foreach("#{Rails.root}/courses.csv", :headers => true) do |row|
      		Course.create ({
            :CallNumber => row[0].to_i(),
        		:CourseTitle => row[1],
        		:StartTime1 => row[2],
        		:EndTime1 => row[3],
        		:MeetsOn1 => row[4],
        		:Building1 => row[5],
        		:Room1 => row[6],
        		:Instructor1Name => row[7]
     		  })
        end
    end

    desc "Import users"
    task :getusers => [:environment] do
        User.create ({
            :first_name => "Wandrille",
            :last_name => "Hubert",
            :email => "wany23@gmail.com",
            :role => "student"
            })
        end

end