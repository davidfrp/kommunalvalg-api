INSERT INTO parties (signature, abbreviation, name, hex_color) VALUES
    ('A', 'S', 'Socialdemokratiet', '#ff0000'),
    ('B', 'RV', 'Radikale Venstre', '#ff00ff'),
    ('C', 'KF', 'Det Konservative Folkeparti', '#ff0000'),
    ('D', 'NB', 'Nye Borgerlige', '#00ff00'),
    ('E', null, 'Christiania-Listen', '#000000'),
    ('F', 'SF', 'Socialistisk Folkeparti', '#ff0000'),
    ('G', null, 'Veganerpartiet', '#000000'),
    ('H', null, 'Grøn Omstilling', '#000000'),
    ('I', 'LA', 'Liberal Alliance', '#0000ff'),
    ('J', null, 'Hampepartiet', '#000000'),
    ('K', 'KD', 'Kristendemokraterne', '#ff00ff'),
    ('L', null, 'Københavnerlisten', '#000000'),
    ('M', null, 'Danmark for Alle', '#000000'),
    ('N', null, 'Kommunisterne', '#000000'),
    ('O', 'DF', 'Dansk Folkeparti', '#00ffff'),
    ('P', null, 'Copenhagen', '#000000'),
    ('Q', null, 'Feministisk Initiativ', '#000000'),
    ('R', null, 'Kommunistisk Parti', '#000000'),
    ('T', null, 'Frihedslisten', '#000000'),
    ('U', null, 'Klimapartiet Momentum', '#000000'),
    ('V', 'V', 'Venstre, Danmarks Liberale Parti', '#0000ff'),
    ('Y', null, 'Kærlighedspartiet', '#000000'),
    ('Z', null, 'Rolig Revolution', '#000000'),
    ('Æ', null, 'Bæredygtigt samfund', '#000000'),
    ('Ø', 'EL', 'Enhedslisten - De Rød-Grønne', '#ff0000'),
    ('Å', 'ALT', 'Alternativet', '#00ff00'),
    ('1', null, 'Det Demokratiske Parti', '#000000');

-- Socialdemokratiet
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Sophie Hæstorp Andersen', 11039, 1),
	('Lars Weiss', 4020, 1),
	('Laura Rosenvinge', 2579, 1),
	('Jesper Christensen', 855, 1),
	('Sofie Seidenfaden', 1329, 1),
	('Jonas Bjørn Jensen', 1085, 1),
	('Trine Madsen', 388, 1),
	('Andreas Keil', 1262, 1),
	('Susan Hedlund', 650, 1),
	('Marcus Vesterager', 905, 1),
	('Maria Tranberg', 255, 1),
	('Niels E. Bjerrum', 735, 1),
	('Mette Reissmann', 1720, 1),
	('Henrik Appel', 686, 1),
	('Fatima H. Ladefoged', 495, 1),
	('Yildiz Akdogan', 1714, 1),
	('Finn Skou Nielsen', 164, 1),
	('Lea Friedberg', 1048, 1),
	('Hans Præstbro', 313, 1),
	('Ulla Krag', 641, 1),
	('Christoffer Rosenkrands', 160, 1),
	('Maria Kornbek', 119, 1),
	('Dennis Schnell-Lauritzen', 288, 1),
	('Rikke Skovgaard Andersen', 433, 1),
	('Morten Garly Andersen', 231, 1),
	('Hari Neupane', 904, 1),
	('Kit Roesen', 189, 1),
	('Lauritz Ziethen', 318, 1),
	('Gitte Kristensen', 100, 1),
	('Lone Larsen', 155, 1);

-- Radikale Venstre
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Mia Nyegaard', 3518, 2),
	('Christopher Røhl', 2055, 2),
	('Mette Annelie Rasmussen', 2944, 2),
	('Jes Vissing Tiedemann', 668, 2),
	('Katrine Kildgaard', 2996, 2),
	('Sally Khallash', 736, 2),
	('Jino Victoria Doabi', 964, 2),
	('Dan Kreutzfeldt', 462, 2),
	('Lartey Lawson', 1163, 2),
	('Emil Moselund', 3136, 2),
	('Kashif Ahmad', 1295, 2),
	('Emil Sloth Andersen', 1776, 2),
	('Kim Mandix', 280, 2),
	('Hanne Kofoed', 424, 2),
	('Martin Schepelern', 781, 2);

-- Det Konservative Folkeparti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Jakob Næsager', 8046, 3),
	('Helle Bonnesen', 3433, 3),
	('Line Ervolder', 1019, 3),
	('Karina Bergmann', 836, 3),
	('Morten Melchiors', 1026, 3),
	('Mathilde Kastbjerg', 1610, 3),
	('Susanne Møller', 294, 3),
	('Lasse Vogel Andersen', 121, 3),
	('Andreas Petersen', 526, 3),
	('Hussain Ali', 354, 3),
	('Manuel Sjødahl Andersen', 59, 3),
	('Helle Jønch', 978, 3),
	('Jens Wedenborg', 466, 3),
	('Thorbjørn Hein', 384, 3),
	('Peter Bjerregaard', 1383, 3),
	('Peter Rasmussen', 107, 3),
	('Lis Langsø', 154, 3),
	('Ole Normann Buch', 475, 3),
	('Dan Pedersen', 31, 3),
	('Hannibaal Skov Al Awssi', 428, 3),
	('Anders Løve Kyhl', 175, 3),
	('Camilla Dreyer', 199, 3),
	('Hans Erik Sigsgaard', 18, 3),
	('Peter Olesen', 31, 3),
	('Ingrid Slott', 91, 3);

-- Nye Borgerlige
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Niels Peder Ravn', 804, 4),
	('Anastasia von Wildenrath Løvgreen', 558, 4),
	('Jimmi Haushøj', 289, 4),
	('Malte Larsen', 513, 4),
	('Anders Toft Hansen', 249, 4),
	('Hein Christensen', 109, 4),
	('Mikael Lind Petersen', 54, 4),
	('Jan Trøjgaard', 105, 4),
	('Jakob Busk', 119, 4),
	('Patrick Jensen', 23, 4);

-- Christiania-Listen
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Hulda Mader, Christiania', 59, 5),
	('Britta Lillesøe, Christiania', 48, 5),
	('Kirsten Larsen Mhoja, Christiania', 20, 5),
	('Rasmus Blædel Larsen, Nørrebro', 36, 5);

-- Socialistisk Folkeparti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Sisse Marie Welling', 7016, 6),
	('Astrid Aller', 4649, 6),
	('Rasmus Steenberger', 1430, 6),
	('Anna Overlund', 441, 6),
	('Klaus Mygind', 982, 6),
	('Harun Demirtas', 1382, 6),
	('Annika Smith', 1002, 6),
	('Tobias Bornakke', 448, 6),
	('Turid Leirvoll', 275, 6),
	('Yilmaz Yildiz', 621, 6),
	('Yasser Ghanbari', 555, 6),
	('Kasper Nordborg Kiær', 296, 6),
	('Thomas Warburg', 220, 6),
	('Mads Balslev Hansen', 268, 6),
	('Karla Banke Mathisen', 373, 6),
	('Edith Jakobsen', 107, 6),
	('Jonas Neivelt', 219, 6),
	('Benjamin Friis', 295, 6),
	('Julie Svensson', 53, 6),
	('Majbritt Svensson', 61, 6),
	('Mette Solbjerghøj Isaksen', 69, 6),
	('Morten Bering', 79, 6),
	('Bjarne P. Nielsen', 12, 6),
	('Mads Mikkel Dragholt', 489, 6);

-- Veganerpartiet
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Maria Nørgaard Andersen', 548, 7),
	('Ole Therkelsen', 129, 7),
	('Karsten Faber', 217, 7),
	('Lars Corvinius Olesen', 128, 7),
	('Christoffer Gertz Bech', 60, 7);

-- Grøn Omstilling
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Esben Ingerslev, Østerbro', 96, 8);

-- Liberal Alliance
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Ole Birk Olesen', 3695, 9),
	('Alexander Ryle', 984, 9),
	('Joanne Bywater', 311, 9),
	('Martin Sibast Laugesen', 242, 9),
	('Martin Ancher', 40, 9),
	('Sofie Seegert', 109, 9),
	('Julie Skov', 360, 9);

-- Hampepartiet
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Klaus Trier Tuxen', 324, 10);

-- Kristendemokraterne
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Jesper Housgaard', 228, 11),
	('Rolf Bjerre', 112, 11),
	('Christopher Nybro Bonde', 96, 11),
	('Nanna Bock', 81, 11),
	('Jesper Truelsen', 21, 11),
	('Gunnar Bjørn Thomsen', 13, 11),
	('Bess Serner-Pedersen', 51, 11),
	('Caspar Vlasman', 36, 11);

-- Københavnerlisten
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Tommi Raalind', 475, 12),
	('Elisabeth Cecilia Dorn', 270, 12),
	('Jan Ingwersen', 17, 12);

-- Danmark for Alle
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Petar Socevic', 692, 13),
	('Senka Sisic', 79, 13),
	('Tobias Elsager Hansen', 14, 13),
	('Adam Besic', 27, 13),
	('Naeem Atti Al-Rubaiy', 25, 13),
	('Batoul Youssef', 23, 13),
	('Julian Fawaz Al-Alousi', 5, 13),
    ('Mirza Tabakovic', 50, 13),
	('Zoran Andrejic', 5, 13),
    ('Abdel-Rahman Solh', 27, 13);

-- Kommunisterne
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Rikke G.F. Carlsson', 99, 14),
	('Lars Emanuel', 47, 14),
	('Hjørdis Nielsen', 14, 14),
	('Steen Jørgensen', 19, 14),
	('Preben Fogelstrøm', 13, 14);

-- Dansk Folkeparti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Finn Rudaizky', 1569, 15),
	('Lars Vestergaard', 481, 15),
	('Cecilie Winther Kristensen', 766, 15),
	('Jens Vornøe', 111, 15),
	('Allan Christensen', 125, 15),
	('Tina Wittendorf', 49, 15),
	('Henrik Svendsen', 45, 15),
	('Cheanne Nielsen', 171, 15),
	('Erik Ernskov', 56, 15),
	('Birthe Skaarup', 145, 15);

-- Copenhagen
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Jakob Dabrowski', 48, 16);

-- Feministisk Initiativ
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Ida Damgaard, Christianshavn', 236, 17);

-- Kommunistisk Parti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Jan Mathisen', 335, 18),
	('Brian O''Brien Grønvold', 86, 18),
	('Elias Olsen Haack', 114, 18),
	('Mona Jensen', 47, 18),
	('Lotte Rørtoft-Madsen', 44, 18),
	('Jonas Brynnum', 65, 18),
	('Marc B. Sanganee', 33, 18),
	('Hans Skou', 83, 18),
	('Arne Cheller', 6, 18),
    ('Janni Milsted', 19, 18),
	('Anton Nielsen', 4, 18),
    ('Ali Khilleh', 17, 18);

-- Frihedslisten
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Jovan Tasevski, Amager', 392, 19),
	('Per Brændgaard, Østerbro', 204, 19),
	('Agathe Dorado, København K', 49, 19),
	('Cecilie M. Albrecht, Nørrebro', 39, 19),
	('Jeanette Strauss, Valby', 19, 19);

-- Klimapartiet Momentum
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Theresa Scavenius', 1447, 20),
	('Mikkel Bahl', 128, 20),
	('Sofie Groth', 375, 20),
	('Jan Vejnaa Hansen', 21, 20),
	('Marie Groth Kruse', 83, 20),
	('Anton Castro', 96, 20);

-- Venstre, Danmarks Liberale Parti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Cecilia Lonning-Skovgaard', 2954, 21),
	('Jens-Kristian Lütken', 1413, 21),
	('Louise Theilade Thomsen', 1356, 21),
	('Cille Hald Egholm', 980, 21),
	('Jakob Tørring', 237, 21),
	('Lars Magnus Christensen', 315, 21),
	('Heidi Wang', 819, 21),
	('Ane Storm', 722, 21),
	('René Bredal', 335, 21),
	('Lena Holm Jensen Lindskog', 179, 21),
	('Anders Fausbøll', 687, 21),
	('Michael Lange', 284, 21),
	('Dan Taki', 34, 21),
	('Bjarke Kværnø', 216, 21),
	('Daniel Askbo', 275, 21),
	('Jens Erik Frandsen', 42, 21),
	('Claus Buch', 1014, 21),
	('Jens Godwin Damgaard', 65, 21),
	('John Michael Jensen', 305, 21),
	('Marianne Moegreen', 281, 21),
	('Anders Bo Nielsen', 102, 21),
	('Bo Sandroos', 147, 21),
	('Bent Christoffersen', 43, 21),
	('Oksana Gjermstad', 43, 21),
	('Sissel Friisgaard', 116, 21),
	('Jesper Levy', 344, 21);

-- Kærlighedspartiet
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Allan Anarchos, København N', 33, 22),
	('Sarah K.O. Christiansen, Christia', 48, 22),
	('John Wagner, Amager', 25, 22),
	('Lars Skovle, Vesterbro', 5, 22),
    ('Jørgen K. Madsen, Christiania', 4, 22),
    ('Edna Michaelsdottir, Christiania', 18, 22),
	('Peter Eliot Juhl, Valby', 6, 22),
    ('Morten Nielsen, Christiania', 12, 22),
	('Scott Hill, København S', 9, 22),
    ('Karsten Nyvang, Nørrebro', 5, 22),
    ('Leif Botwel, Christiania', 8, 22),
    ('Annie Hjorth, Sundby', 4, 22),
    ('Brynjar Einarsson, Sydhavn', 11, 22),
	('Hans Christian Magnussen, Vesterbro', 3, 22),
    ('Lotte Seir, Østerbro', 7, 22),
    ('Henning Petersen, Vesterbro', 1, 22),
    ('Peter Christiansen, Vesterbro', 3, 22),
    ('Pedro Gonçalves, Christiania', 8, 22),
    ('Ulf Kjellberg, Nord', 0, 22);

-- Rolig Revolution
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Stine Linnemann', 344, 23);

-- Bæredygtigt samfund
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Kirstine Desian', 218, 24),
	('David Hirst', 40, 24);

-- Enhedslisten - De Rød-Grønne
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Line Barfod, Nørrebro', 17284, 25),
	('Karina Vestergård Madsen, Østerbro', 2105, 25),
	('Gyda Heding, Nørrebro', 1442, 25),
	('Gorm Anker Gunnarsen, Amager', 2106, 25),
	('Charlotte Lund, Vanløse', 1481, 25),
	('Sinem Demir, Vanløse', 3480, 25),
	('Knud Holt Nielsen, Vesterbro', 580, 25),
	('Bente Møller, Brønshøj-Husum', 377, 25),
	('Frederik W. Kronborg, Amager Vest', 417, 25),
	('Mikkel Skovgaard Hansen, Nørrebro', 1516, 25),
	('Jean Thierry, Bispebjerg', 413, 25),
	('Stine Finné Toft, Indre By', 1180, 25),
	('Ali Hansen, Brønshøj', 458, 25),
	('Klaus Goldschmidt Henriksen, Sydha', 746, 25),
	('Mikael Hertoft, Østerbro', 161, 25),
	('Maria Sofie Petersen, Nordvest', 1326, 25),
	('Hassan Nur Wardere, Østerbro', 840, 25),
	('Absalon Billehøj, Amager', 491, 25),
	('Kaj Thelander Jessen, Sydhavn', 241, 25),
	('Erdogan Mert, Nørrebro', 181, 25),
	('Sune Hvidtfeldt Håkansson, Sydhavn', 119, 25),
	('Ulla Morin, Nørrebro', 62, 25),
	('Henrik Palsmar, Valby', 339, 25),
	('Ditte Mørck, Brønshøj-Husum', 149, 25),
	('Katrine Hassenkam, Vanløse', 912, 25),
	('Sarah Mathiesen, Vanløse', 105, 25),
	('Reinout Bosch, Vanløse', 119, 25),
	('Leila Stockmarr, Nørrebro', 514, 25),
	('Kim J. Henriksen, Amagerbro', 164, 25);

-- Alternativet
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Franciska Rosenkilde', 2620, 26),
	('Kim Hjerrild', 475, 26),
	('Birgitte Kehler Holst', 613, 26),
	('Anders Stjernholm', 318, 26),
	('Troels Chr. Jakobsen', 535, 26),
	('Nicklas Hakmann', 131, 26),
	('Martin Kjærulff', 269, 26),
	('Annika Martins', 278, 26),
	('Christina Olumeko', 872, 26);

-- Det Demokratiske Parti
INSERT INTO candidates (name, amount_of_votes, party_id) VALUES
	('Peter Hjorth', 105, 27),
	('Christian Kubel Højmose', 16, 27);
