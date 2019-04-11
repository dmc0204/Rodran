# rodran

Environment:

For Windows Users -
	Interactive Web interface requires a PHP services. If the page is hosted locally, the localhost must have some  
	kind of	PHP backend.
	
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

