CREATE DATABASE DevMeet;

Use DevMeet;

CREATE TABLE users(
        id SERIAL
    ,   first_name VARCHAR(30)
    ,   email VARCHAR(40)
    ,   password VARCHAR(50)
    ,   PRIMARY KEY (id)
);

CREATE TABLE meetups(
        id SERIAL
    ,   api_event_id INT
    ,   event_name VARCHAR(30)
    ,   event_description VARCHAR(500)
    ,   event_url VARCHAR(100)
    ,   event_time TIMESTAMP
    ,   event_duration INT
    ,   venue_address VARCHAR(100)
    ,   venue_city VARCHAR(40)
    ,   venue_state VARCHAR(5)
    ,   venue_longitude INT
    ,   venue_latitude INT
    ,   group_name VARCHAR(40)
    ,   group_urlname VARCHAR(50)
    ,   group_how_to_find VARCHAR(100)
    ,   api_group_id INT
    ,   PRIMARY KEY (id)
);


CREATE TABLE starred(
        id SERIAL
    ,   meetup_id INT
    ,   user_id INT 
    ,   FOREIGN KEY (meetup_id) REFERENCES meetups(id)
    ,   FOREIGN KEY (user_id) REFERENCES users(id)
);


