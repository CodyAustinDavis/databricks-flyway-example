ALTER TABLE PERSON
ADD COLUMNS (unique_id STRING DEFAULT uuid(),
update_timestamp TIMESTAMP DEFAULT current_timestamp());

