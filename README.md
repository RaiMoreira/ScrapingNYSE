# ScrapingNYSE
Uses Bash script, Python, PHP and MySQL to extract data from NYSE and elegantly display it.

1.Bash script downloads the stock web page every minute for an hour and saves it with appropriate timestamp.
    (This had to be done between 9:30AM to 4PM when the markets were open and values changed)

2.DOM manipulation to extract relevant data from the downloaded pages and injects data into MySQL database.


3.PHP script retrives all the data from the MySQL database and presents it using APACHE web server. Presented tables are clickable and sortable.




