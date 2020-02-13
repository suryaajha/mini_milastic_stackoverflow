# README

## Stack Overflow DIY Demo App:

It is a platform where users can come and post questions and answers as well as comment like stackoverflow.com. 

### **Workflow**:

**Users** -> 

* Enter the system and create a account (managed  by devise gem).
* Look at the existing questions and answers (without login requirement just like stackoverflow)
* If they want to see some other user profile they require first to create a account of login)
* Post Answers to Questions or ask their own Questions

**Technology**:

* **Frontend**: Bootstrap
* **Backend**: Rails 
* **Database**: PostgreSQL 

Schema:
[Updated Schema](https://www.lucidchart.com/documents/view/adf1db4c-7a46-4e35-9576-9921f58631c3)  
![Schema](https://raw.githubusercontent.com/suryaajha/mini_milastic_stackoverflow/blob/master/public/project_files/schema.png)

Database schema for the app is as follows and link of lucicdchart. The schema diagram uses crows foot notation for specifying the relationship of models.

**Models**:
* User
* Question
* Answer
* Comment
* Badge

**Installation instruction**

Steps:
* Change the working directory to some directory in your system ex. /projects/
* Clone the repo
	git clone https://github.com/suryaajha/mini_milastic_stackoverflow.git
* cd mini_milastic_stackoverflow
* Installation instruction of ruby using ruby using rvm
  * Install ruby version 2.7.0  
    `rvm install 2.7.0`
  * Choose the installed ruby version  
    `rvm use 2.7.0`
  * Create a new gemset for isolating your environment
    `rvm gemset create mini_so `
  * Use the newly created gemset
    `rvm use @mini_so`
  * Install bundler for installing required dependencies of the project  
    `gem install bundler`
  * Install required packages using bundler  
    `bundle install `
  * If Yarn packages are out of date follow the given instructions to recover
  * May get some errors about database please satisfy the errors. May be by  
    `rails db:create`
    `rails db:migration`
  * Run the rails server   
    `rails server`
  * Open browser and go to `http://localhost:3000/`  
**Hopefully done!**
 
**Requirement**  

* Ruby version - 2.7.0

* Gemset **mini_so**  
  `rvm gemset create mini_so`

* Database creation  
  `rails db:create`
