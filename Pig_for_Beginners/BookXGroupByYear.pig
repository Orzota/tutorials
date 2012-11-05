/* BookXGroupByYear.pig */

BookXRecords = LOAD 'BX-BooksCorrected1.txt' USING PigStorage(';') AS (ISBN:chararray,BookTitle:chararray,BookAuthor:chararray,YearOfPublication:chararray,Publisher:chararray,ImageURLS:chararray,ImageURLM:chararray,ImageURLL:chararray);
-- Load the file with the schema defined

GroupByYear = GROUP BookXRecords BY YearOfPublication;
-- Group by YearOfPublication

CountByYear = FOREACH GroupByYear GENERATE CONCAT((chararray)$0,CONCAT(':',(chararray)COUNT($1)));
-- For each record in 'GroupByYear', generate the resulting string -> Year:No. of elements in the bag

STORE CountByYear INTO 'pig_output_bookx' USING PigStorage('\t');
-- Storing the results of the Data Flow in the directory 'pig_output_bookx' on HDFS