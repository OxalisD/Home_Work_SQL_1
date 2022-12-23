CREATE TABLE workmans (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department VARCHAR(100),
	chief INTEGER REFERENCES workmans(id)
);