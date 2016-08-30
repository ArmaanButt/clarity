# Clarity

Clarity is a social platform for University students to rate, review, and discuss courses.

## Contribute

Pull requests are greatly appreciated.

Feel free to find and fix any UI issues. Additionally, I feel there is a lot of room for improvement in the efficiency department.

If you wish to contact me with questions about this project, tweet to me [@armaangalaxy](http://twitter.com/armaangalaxy). 


### Ruby On Rails Setup

1) open CMD and execute: ruby -v if ruby is installed then you should get a version number. if not then download ruby from http://rubyinstaller.org/downloads/ and install
   (install a  32bit version higher than 2.2.2). Make sure to check the "Add Ruby executables to your PATH" checkbox during installation. Then open a new CMD window and run: ruby -v again, you should get a version number.

2) execute: gem --version if version is not 2.5.0 or higher execute gem update --system

3) install rails using: gem install rails
If you get some sort of path bindings issue during the install of rails go back to  

	http://rubyinstaller.org/downloads/  

and download the latest toolkit. 
The tool kit should download to your downloads folder. Go to it and unzip.
Then through CMD cd into the download folder and run the following commands :

		ruby dk.rb init
		ruby dk.rb install
		gem install rdiscount --platform=ruby (this could take awhile)

4) if rails installed fine then skip this step. Execute:

		gem install rails
		gem update rails
		
5) Download elastic search from https://www.elastic.co/downloads/elasticsearch (Press on the ZIP file link) 

Unzip it to any directory and switch to the bin folder.

Run elasticsearch.bat as administrator

If you get an error about JAVA_HOME then download the latest JDK and then follow this guide https://confluence.atlassian.com/doc/setting-the-java_home-variable-in-windows-8895.html
		
6) now cd into the fc folder and execute: 

		bundle install
		rake searchkick:reindex CLASS=Course
		rake db:migrate
		rails server
the server should start, go to localhost:3000 and you should see a welcome to rails page.  






