# GenshinWiki

GenshinWiki is simple crud operation website made with NodeJs, ReactJs and MySQL for database.
To run the website:
1. Install all the necessary libraries like express, body-parser, nodemon(this one's optional) 
2. Import all the tables into your sql database(I would recommend naming the database: 'genshinwiki'
3. Change the following piece of code in index.js file in server folder:
	```const db = mysql.createConnection({
	
    		host:<your_host_name>, //localhost in my case
    		user:<your_user_name>, //root is the user by default
    		password:<password>, //default password:"" 
    		database:'genshinwiki'
	}) ```
4. Once your database is created, its time to run the website!
5. Under the client folder, navigate to src folder and run the command : ```npm start```
6. Simultaneously, run ```node index.js``` in the server folder.
7. Open your web browser and type ```localhost:3000``` in a new tab and you should be able to view the project.
That's it!
