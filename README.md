== README ==


######Ruby On Rails Setup######

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

######MySQL Workbench Installation######

The standalone download is available at http://dev.mysql.com/downloads/workbench/.

MySQL Workbench can be installed using the Windows Installer (.msi) installation package. The MSI package bears the name mysql-workbench-community-version-winarch.msi, where version indicates the MySQL Workbench version number, and arch the build architecture (either win32 or winx64).

1. To install MySQL Workbench, right-click the MSI file and select the Install item from the pop-up menu, or double-click the file.

2. In the Setup Type window you may choose a Complete or Custom installation. To use all features of MySQL Workbench choose the Complete option.

3. Unless you choose otherwise, MySQL Workbench is installed in C:\%PROGRAMFILES%\MySQL\MySQL Workbench 6.3 edition_type\, where %PROGRAMFILES% is the default directory for programs for your locale. The %PROGRAMFILES% directory is defined as C:\Program Files\ on most systems.

######Connecting to MySQL Installation######

1. Open the MySQL workbench and click setup new connection.

2. Enter the following configuration and then click ok:

	Hostname: qa-ms2012r2-ab.sotiqa.com
	username: root
	password: Welcome1234


###Fixing Bcrypt###

Follow the steps in this link:
https://www.alib.jp/entries/bcrypt_ext_load_error_on_ruby21x



If that doesn't work:

1)If you haven't downloaded the devkit yet download the 32 bit version for Ruby 2.0 and above from http://rubyinstaller.org/downloads/

2)Extract it to some folder. 

3)Open up control panel

4)Type in "advanced" in the search bar and press "View advanced system settings"

5)Press environment variables and edit the Path variable

6)If the folder you extracted to was C:\devkit then add ;C:\devkit\bin;C:\devkit\mingw\bin to the path

7)Press ok and ok

8)In order to find out where your gems are located run 

	gem which rails

The part before "railties" is the folder for your gems.

9)Then follow the steps in the link. You may have to do it twice if multiple versions of bcrypt are in your gems folder.