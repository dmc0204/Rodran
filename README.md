# rodran

Environment:

For Windows Users -
	The Overwatch League Interactive Web Interface demo requires a PHP services. If the page is hosted  
	locally, the localhost must have some kind of PHP backend.
	
	This demo was executed locally, on a Windows 10 host using Chrome Browser, MySQL Community Edition and xAMPP
	
	<--xAMPP-->
	
	xAMPP install instructions can be found @
	https://www.wikihow.com/Install-XAMPP-for-Windows
	
	Only the Apache services are required. After installing xAMPP, run the xAMPP Control Panel and start the   
	Apache services.
	
	The OWLDB project must be stored in the path of the backend Apache server. 
	
	In the case of xAMPP, that is the ...\htdocs\ folder.
	ie; c:\xAMPP\htdocs\owldb\[*.htm/php]
	
	OWLDB Project File Path Structure with xAMPP: 
	...\htdocs\owldb\
	...\htdocs\owldb\images\
	...\htdocs\owldb\bootstrap-4.3.1-dist\css\
	...\htdocs\owldb\bootstrap-4.3.1-dist\js\
	
	After installing xAMPP, putting the project into the htdocs folder and starting the Apache server, you may  
	access the demo by opening the latest Chrome or Firefox browser and entering /localhost/owldb/ into the  
	browser bar.
	
	<--MySQL Community Edition-->	
	
	MySQL Community Edition install instructions can be found @
	https://mid.as/kb/00145/install-configure-mysql-on-windows-server
	
	After installing MySQL Community Edition, run MySQL Workbench v8.* CE.
	
	You can create a new Local Instance of MySQL using the same username and password the demo used.
	
	Local Instance DB Login:
	Username: root
	Password: Te@mHorizon1!
	
	The demo will not connect successfully without the correct username and password for the php connector  
	to use.
	
	After you have created a Local Instance in MySQL using the Username and Password for the demo, you will  
	need to import the Database Structure and Data into MySQL.
	
	First, you will want to download the owldb_v1.sql dump file from the root of the repository to a  
	destination of your choice. (Github Repository:\...\Rodran\owldb_v1.sql)
	
	Next, you will want to import that Database dump into the Local Instance you created on your MySQL. 
	
	To do this, you will need to start the Local Instance you created in MySQL Workbench.
	
	Use the Server dropdown menu at the top of the program and select Data Import.
	
	Select the Import Option radial button that says "O Import from Self-contained File".
	
	Specify the location of the "owldb_v1.sql" file that you downloaded to your computer.
	
	Near the bottom right corner, there is a dropdown menu that lets you select "Dump Structure and Data",  
	"Dump Structure Only" or "Dump Data Only". 
	"Dump Structure and Data" should be selected by default.  
	If not, select "Dump Structure and Data" now. 
	
	At the bottom right corner, there is a button labeled "Start Import". Click this button and follow the  
	prompts using default options. 
	
	You are importing the structure and data of a self-contained sql dump of the demoed Database file  
	you downloaded and imported with the MySQL Data import function. 
	
	The project demo interacts with the structure and data contained in the sql dump file.
	
	<-- Ready Check -->
	
	Before you test the project demo:
	
	1) The project files should be in the ".../htdocs/owldb/" file path (if using xAMPP as your local server).  
	2) MySQL service should be running a Local Instance of the Database system with the Structure  
	   and Data from the "owldb_v1.sql" dump.
	3) xAMPP Control Panel is running and you have started the Apache Server.
	4) You are now ready to open newest version of Chrome or Firefox to test the project demo.
	5) Navigate to "/localhost/owldb/" in your browser. If you are using a different filepath or server  
	   these steps will not work for you.
	   
	Enjoy using the Overwatch League Database!
	
	
	
	
	

