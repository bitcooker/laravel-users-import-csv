# Laravel 7 - Users Import from a CSV file using job queue

A small application that allows to import users from a CSV file into the database using job queue.  
An email is sent once a job is finished.  
Current configuration uses mailtrap.io email service to test email sending.  
**test.csv** file containing test CSV data is in the root of the repository.  
**database/backups/backup.sql** file contains DB backup with test data.  

## Frameworks and libraries used

* Laravel 7
* Bootstrap

## To install

    git clone https://github.com/michaelstepanov/laravel-users-import.git
    cd laravel-users-import
    Rename ".env.example" file into ".env"
    composer install
    Set up DB connection
    php artisan migrate
    Set up mail connection (set MAIL_USERNAME and MAIL_PASSWORD in .env file)
	
## To run

	php artisan serve
	php artisan queue:listen

## Screenshots

Users page
![List page](public/screenshots/users.png?raw=true "Users page")

Jobs page
![Login page](public/screenshots/jobs.png?raw=true "Jobs page")

File Upload page
![Login page](public/screenshots/file_upload.png?raw=true "File Upload page")
