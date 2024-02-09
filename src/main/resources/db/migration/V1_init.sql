CREATE TABLE IF NOT EXISTS film (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    director VARCHAR(100),
    duration INT
    );

CREATE TABLE IF NOT EXISTS scene (
    id SERIAL PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    budget DECIMAL NOT NULL,
    minutes INT NOT NULL,
    ticket_office DECIMAL NOT NULL,
    film_id INT,
    FOREIGN KEY (film_id) REFERENCES film(id)
    );

CREATE TABLE IF NOT EXISTS characters (
    id SERIAL PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    cost DECIMAL NOT NULL,
    actor_name VARCHAR(100) NOT NULL,
    power VARCHAR(100) NOT NULL,
    age INT,
    nationality VARCHAR(50) NOT NULL,
    scene_id INT,
    FOREIGN KEY (scene_id) REFERENCES scene(id)
    );
