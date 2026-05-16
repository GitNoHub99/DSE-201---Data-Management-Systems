CREATE TABLE users (
    uid INTEGER PRIMARY KEY,
    fname TEXT,
    lname TEXT
);

CREATE TABLE videos (
    vid INTEGER PRIMARY KEY,
    vname TEXT
);

CREATE TABLE logins (
    id INTEGER PRIMARY KEY,
    uid INTEGER REFERENCES users(uid),
    login_time TIMESTAMP
);

CREATE TABLE suggestions (
    id INTEGER PRIMARY KEY,
    login_id INTEGER REFERENCES logins(id),
    vid INTEGER REFERENCES videos(vid)
);

CREATE TABLE likes (
    uid INTEGER REFERENCES users(uid),
    vid INTEGER REFERENCES videos(vid),
    PRIMARY KEY (uid, vid)
);

CREATE TABLE watches (
    id INTEGER PRIMARY KEY,
    uid INTEGER REFERENCES users(uid),
    vid INTEGER REFERENCES videos(vid),
    watch_time TIMESTAMP
);

CREATE TABLE friendships (
    uid1 INTEGER REFERENCES users(uid),
    uid2 INTEGER REFERENCES users(uid),
    PRIMARY KEY (uid1, uid2)
);