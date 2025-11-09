CREATE DATABASE IF NOT EXISTS `crud_php`;
USE `crud_php`;

CREATE TABLE IF NOT EXISTS `consoles` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `jogos` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `descricao` TEXT,
    `preco` DECIMAL(10, 2) NOT NULL,
    `console_id` INT(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`console_id`) REFERENCES `consoles`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `consoles` (`nome`) VALUES
('Atari'),               
('Gameboy'),             
('Nintendo Switch'),     
('Playstation 3'),       
('Playstation 4'),       
('Playstation 4 Pro'),   
('Playstation 5'),       
('Playstation 5 Pro'),   
('Xbox 360'),            
('Xbox One'),            
('Xbox One X'),          
('Xbox Series S'),       
('Xbox Series X');       

INSERT INTO `jogos` (`nome`, `descricao`, `preco`, `console_id`) VALUES
('River Raid', 'Clássico do Atari 2600 com jogabilidade viciante de voo e tiro.', 129.90, 1),
('Pokémon Yellow', 'Versão especial com Pikachu seguindo o jogador, um clássico do Game Boy.', 499.90, 2),
('Metroid Prime', 'Clássico de ação e exploração em primeira pessoa do GameCube.', 299.90, 3),
('The Legend of Dragoon', 'RPG épico do PlayStation 1 com batalhas em turnos e enredo marcante.', 249.90, 4),
('Shadow of the Colossus', 'Aventura épica com batalhas contra gigantes em um mundo desolado.', 399.90, 5),
('Okami', 'Aventura artística inspirada na mitologia japonesa, com pincel mágico.', 199.90, 5),
('The Witcher 3: Wild Hunt', 'RPG de mundo aberto com narrativa complexa e escolhas morais profundas.', 159.90, 5),
('Elden Ring', 'RPG de ação em mundo aberto com desafios intensos e liberdade total.', 299.90, 7),
('Cyberpunk 2077', 'RPG futurista ambientado em Night City com missões e escolhas complexas.', 189.90, 7),
('Halo 3', 'FPS icônico do Xbox 360 com campanha cooperativa e multiplayer lendário.', 199.90, 9),
('Sea of Thieves', 'Aventura multiplayer de piratas com exploração e batalhas navais.', 199.90, 10),
('Forza Horizon 5', 'Jogo de corrida em mundo aberto ambientado no México, exclusivo do Xbox.', 249.90, 13),
('Red Dead Redemption 2', 'Ação e aventura no Velho Oeste com história cinematográfica.', 249.90, 13),
('Silent Hill 2', 'Clássico do terror psicológico que marcou o gênero no PlayStation 2.', 399.90, 4),
('Conkers Bad Fur Day', 'Aventura de humor adulto e gráficos avançados para Nintendo 64.', 899.90, 9);
