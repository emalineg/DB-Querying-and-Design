CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	username varchar,
	password text,
	email varchar
);

CREATE TABLE posts (
	post_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	timestamp time,
	recipeName varchar,
	instructionsText text,
	likes boolean,
	public boolean
);

CREATE TABLE verified (
	verified_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	date date
);

CREATE TABLE occasions (
	occassions_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	post_id INTEGER REFERENCES posts(post_id),
	occassionsName varchar
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	review text
);

CREATE TABLE ingredients (
	ingredients_id SERIAL PRIMARY KEY,
	ingredients_name varchar
);

CREATE TABLE ingredientsBridge (
	posts_ingredients_id SERIAL PRIMARY KEY,
	ingredients_id INTEGER REFERENCES ingredients(ingredients_id),
	post_id INTEGER REFERENCES posts(post_id)
);

CREATE TABLE reviewsBridge (
	reviewsBridge_id SERIAL PRIMARY KEY,
	review_id INTEGER REFERENCES reviews(review_id),
	post_id INTEGER REFERENCES posts(post_id)
);

CREATE TABLE groceryList (
	list_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	posts_ingredients_id INTEGER REFERENCES ingredientsBridge(posts_ingredients_id)
);










