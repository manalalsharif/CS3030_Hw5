# CS3030_Hw5

A script retrieves files from a web server.
This script has 6 programs to run 
------------------------------------------------------
1- Program 1

The script should take one input parameter (it is positional param) which is the YEAR.


2- Program 2
  The script will expand the tar.gz files it is a file that acts as a container for other files.


3- Program 3
  will Loop over the file created from Program 2 
  1- filter those records from "Canadian female" residents, however, if the email field is NULL, should substitute it with the
  "dwaldo@weber.edu" (the DB should not take NULL values)
  2- Create a new file, with the filter records, but execluding the header and ID field



4- Program 4
A script that compress  the filter data file



5- Program 5
will transfer the file by usingSCP 
(This program should allow for a -u option that allows for the specification of a username The file created from program 4, will be transfer to via SCP)



6- Program 6
the script will clean all temporary files
Delete the temp folder with all the files you expanded from program 2



7- Program 7
last script will wrap all preivous programs from program 1 through 6 to run


Finally:
To Run:
This script will take the four input parameters, as 3 parameters are required and the 4th one is optional
   
   (-f <first_YEAR>)  (-l <last_YEAR>)  (-e <email>)  (–u <user>)
- The first and last year inputs are required to loop over the range of years of data user
- The 4th parameter is the Email For final notification.
  after all required 3 parameters  (-f <first_YEAR>)  (-l <last_YEAR>)  (-e <email>) are passed 
  
   1- Loop over the date range and call Program 1 to retrieve the files.
   2- Call Program 2 to expand all the files those downloaded from previous step.
   3- Call Program 3 to filter data
   4- Call Program 4 to compress data
   5- Call Program 5 to scp file to server
   6-Finally, send an email to the address passed as input parameter –e <email> with the status “Successfully transferred file via scp”, or “Error”
  
  
  
  



