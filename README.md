# Laravel 7 - Users Import from a CSV file using job queue

A small application that allows to import users from a CSV file into the database using job queue.
An email is sent once a job is finished.
Current configuration uses mailtrap.io email service to test email sending.

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

## Screenshots

Users page
![List page](public/screenshots/users.png?raw=true "Users page")

Jobs page
![Login page](public/screenshots/jobs.png?raw=true "Jobs page")

File Upload page
![Login page](public/screenshots/file_upload.png?raw=true "File Upload page")
