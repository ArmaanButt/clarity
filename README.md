== README ==


######Ruby On Rails Setup######

1) open CMD and execute: ruby -v if ruby is installed then you should get a version number. if not then download ruby from http://rubyinstaller.org/downloads/ and install
   (install a  32bit version higher than 2.2.2). Make sure to check the "Add Ruby executables to your PATH" checkbox during installation. Then open a new CMD window and run: ruby -v again, you should get a version number.

2) execute: gem --version if version is not 2.5.0 or higher execute gem update --system

3) install rails using: gem install rails

		* If you get some sort of path bindings issue during the install of rails go back to  http://rubyinstaller.org/downloads/  and download the latest toolkit 
		  the tool kit should download to your downloads folder. go to it and unzip 

		* then through CMD cd into the download folder and run the following commands :
																						ruby dk.rb init
																						ruby dk.rb install
																						gem install rdiscount --platform=ruby (this could take awhile)
4) if rails installed fine then skip this step

		* execute: - gem install rails
				   - gem update rails
		
		
5) now cd into the fc folder and execute: 

		* bundle install
		* rails server
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
https://www.alib.jp/entries/bcrypt_ext_load_error_on_ruby21x