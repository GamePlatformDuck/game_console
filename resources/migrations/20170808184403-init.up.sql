CREATE TABLE IF NOT EXISTS game (
       id INT NOT NULL,
       PRIMARY KEY (id)
);
--;;
CREATE TABLE IF NOT EXISTS board (
       id INT NOT NULL,
       game_id INT NOT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (game_id) references game(id) ON DELETE CASCADE
);
--;;
CREATE TABLE IF NOT EXISTS player (
       id INT NOT NULL AUTO_INCREMENT,
       board_id INT,
       PRIMARY KEY (id),
       FOREIGN KEY (board_id) references board(id) ON DELETE CASCADE
);
