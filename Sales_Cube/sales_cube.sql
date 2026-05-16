CREATE TABLE states (
    sid INTEGER PRIMARY KEY,
    stname TEXT,
    stabbrev TEXT
);

CREATE TABLE categories (
    id INTEGER PRIMARY KEY,
    cname TEXT,
    cdescr TEXT
);

CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    fname TEXT,
    lname TEXT,
    state INTEGER REFERENCES states(sid)
);

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    pname TEXT,
    price DECIMAL,
    cid INTEGER REFERENCES categories(id)
);

CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    pid INTEGER REFERENCES products(id),
    cid INTEGER REFERENCES customers(id),
    quantity INTEGER,
    discount DECIMAL
);