# nalajcie_ssn

Here is a simple SQL script to generate SSN in fivem (Numery Social Security) numbers in the "users" table:

To run the script, open your SQL database management tool (for example heidisql), connect to the database and add this code

``` ALTER TABLE `users`
ADD COLUMN `ssn` int(11) DEFAULT NULL;```

and run the script in your server.cfg
That's all, good luck!
