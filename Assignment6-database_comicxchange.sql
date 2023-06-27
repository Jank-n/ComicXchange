use comicxchange;
CREATE TABLE comics (
ComicID int PRIMARY KEY auto_increment,
ComicTitle varchar(100),
Author varchar(100),
Genre varchar(100),
Synopsis text,
ImageSource varchar(100));

INSERT INTO comics (ComicID, ComicTitle, Author, Genre, Synopsis, ImageSource)
VALUES
(1, 'The Many Deaths of Laila Starr', 'Ram V', 'Drama', 'With humanity on the verge of discovering immortality, the avatar of Death is fired and relegated to the world below to live out her now-finite days in the body of twenty-something Laila Starr in Mumbai. Struggling with her newfound mortality, Laila hatches a plan and soon discovers a way to be placed at the time and location where the creator of immortality will be born . . . But will Laila take her chance to permanently reverse the course of (future) history, or does a more shocking fate await her within the coils of mortal existence?', 'lailastarr.jpg'),
(2, 'The Last Ronin', 'Kevin Eastman & Peter Laird', 'Action', 'Who is the Last Ronin? In a future, battle-ravaged New York City, a lone surviving Turtle embarks on a seemingly hopeless mission seeking justice for the family he lost.', 'lastronin.jpg'),
(3, 'Something is Killing the Children', 'James Tynion IV', 'Thriller', 'When children begin to go missing in the town of Archer’s Peak, all hope seems lost until a mysterious woman arrives to reveal that terrifying creatures are behind the chaos - and that she alone will destroy them, no matter the cost.', 'siktc.png'),
(4, 'Paper Girls', 'Brian K. Vaughan', 'Sci-fi', 'Four 12-year-old newspaper delivery girls from the year 1988 uncover the most important story of all time. Suburban drama and otherworldly mysteries collide in this critically acclaimed series about nostalgia, first jobs, and the last days of childhood.', 'papergirls.jpg'),
(5, 'Mamo', 'Sas Milledge', 'Fantasy', 'Can Orla O’Reilly embrace her destiny in order to bridge the divide between humanity and the faerie world? Orla, the youngest in a long line of hedge witches, finds herself pulled back to her hometown after the death of her grandmother: Mamo. Without Mamo managing magical relationships between the townsfolk and the fae, the seas are impossible to fish, the crops have soured… and Jo Manalo’s attic has been taken over by a poltergeist! Now, Orla and Jo will both be pulled into worlds they never wanted to be part of. Can the two girls work together to save the town?', 'mamo.jpg'),
(6, 'Basilisk', 'Cullen Bunn', 'Horror', 'Who Can Stop The Chimera? Five individuals bound by a cult-like hivemind, they terrorized small towns with their horrifying supernatural sense-based powers, leaving death and destruction in their wake. Regan, one of the Chimera, escaped and has been in hiding, with her murderous eyes bound, overcome with guilt. Until now... when a victim from her past forces her to hunt down the other four of her kind.', 'basilisk.jpg');

SELECT * FROM comics;

