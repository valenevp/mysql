-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Mar-2023 às 22:53
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `musicas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `nomeAlb` varchar(45) NOT NULL,
  `ano` year(4) NOT NULL,
  `nomeBanda` varchar(45) NOT NULL,
  `banda_bandaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`albumID`, `nomeAlb`, `ano`, `nomeBanda`, `banda_bandaID`) VALUES
(1, 'Concentrado', 1980, 'GNR', 1),
(2, 'Brothers in Arms', 1977, 'Dire straits', 2),
(3, 'Making Movies', 1977, 'Dire Straits', 2),
(4, 'Reckless 30th Anniversary', 1959, 'Bryan Adams', 3),
(5, 'Ghost Stories', 1996, 'Coldplay', 4),
(6, 'All the Right Reasons', 1995, 'Nickelback', 5),
(7, 'AM', 2002, 'Artic Monkey', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `artista`
--

CREATE TABLE `artista` (
  `artistaID` int(11) NOT NULL,
  `nomeArt` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `banda_bandaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `artista`
--

INSERT INTO `artista` (`artistaID`, `nomeArt`, `tipo`, `banda_bandaID`) VALUES
(1, 'Alexandre Soares', 'guitarrista', 1),
(2, 'Vitor Rua', 'guitarrista', 1),
(3, 'Tóli César Machado', 'baterista', 1),
(4, 'Jorge Romão', 'baixista', 1),
(5, 'Rui Reininho', 'cantor', 1),
(6, 'Mark Knopfler', 'guitarrista', 2),
(7, 'Mark Knopfler', 'cantor', 2),
(8, 'David Knopfler', 'guitarrista', 2),
(9, 'John Illsley', 'baixista', 2),
(10, 'Pick Withers', 'baterista', 2),
(11, 'Bryan Admns', 'cantor', 3),
(12, 'Chris Martin', 'cantor', 4),
(13, 'Jonny Buckland', 'guitarrista', 4),
(14, 'Guy Berryman', 'baixista', 4),
(15, 'Will Champion', 'baixista', 4),
(16, 'Chad Kroeger', 'guitarrista', 5),
(17, 'Chad Kroeger', 'cantor', 5),
(18, 'Ryan Peake', 'guitarrista', 5),
(19, 'Mike Kroeger', 'baixista', 5),
(20, 'Daniel Adair', 'baterista', 5),
(21, 'Alex Turner', 'cantor', 6),
(22, 'Alex Turner', 'guitarrista', 6),
(23, 'Jamie Cook', 'guitarrista', 6),
(24, 'Nick O Malley', 'baixista', 6),
(25, 'Matt Helders', 'baterista', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banda`
--

CREATE TABLE `banda` (
  `bandaID` int(11) NOT NULL,
  `nomeBanda` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banda`
--

INSERT INTO `banda` (`bandaID`, `nomeBanda`) VALUES
(1, 'GNR'),
(2, 'Dire Straits'),
(3, 'Bryan Adams'),
(4, 'Coldplay'),
(5, 'Nickelback'),
(6, 'Artic Monkey');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compositor`
--

CREATE TABLE `compositor` (
  `compositorID` int(11) NOT NULL,
  `nomeComp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compositor`
--

INSERT INTO `compositor` (`compositorID`, `nomeComp`) VALUES
(1, 'Toli César Machado'),
(2, 'Mark Freuder Knopfle'),
(3, 'Bryan Adams'),
(4, 'Chris Martin'),
(5, 'Chad Kroeger'),
(6, 'Alex Turner');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musica`
--

CREATE TABLE `musica` (
  `musicaID` int(11) NOT NULL,
  `nomeMus` varchar(45) NOT NULL,
  `letra` mediumtext DEFAULT NULL,
  `categoria` varchar(45) NOT NULL,
  `nomeComp` varchar(45) NOT NULL,
  `album_albumID` int(11) NOT NULL,
  `album_nomeBanda` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `musica`
--

INSERT INTO `musica` (`musicaID`, `nomeMus`, `letra`, `categoria`, `nomeComp`, `album_albumID`, `album_nomeBanda`) VALUES
(1, 'vocês', 'Todos me tratam por você\r\nMenos tu não sei porquê\r\nFico parado e o mundo vê\r\n\r\nSó sei quanto paguei\r\nE subi e nem pensei\r\nNem pensar onde cheguei\r\n\r\nEu que vendi o verbo amar\r\nEu menti sem hesitar\r\nE esqueci o calor do lar\r\n\r\nEu não parti nem vou ficar\r\nJá não sei quanto paguei\r\nJá desci e nem pensei\r\nNem pensar onde cheguei', 'pop', 'Toli César Machado', 1, 'GNR'),
(2, 'tirana', 'Tirana é um lugar, quem sabe?\r\nDifícil de encontrar\r\nE tirar à sorte e dar\r\nAvançar retirar\r\nTirana é uma menina Foi\r\nMuito sedutora\r\nAtirar à sorte Pro ar\r\nSem o intuito de acertar\r\n\r\n2x3=6 MULTIPLICAR SOMAR\r\nMAIS CARNE P\'RA CANHÃO\r\nDESPIR E\r\nINVESTIR\r\n3-2=1 É SÓ SUBTRAIR\r\nAPRENDER A DIVIDIR PARA\r\nPODER REINAR\r\n\r\nTirana é só sofrimento Foi!\r\nÉ ferida e unguento\r\nTirana é sincera\r\nMas só por um momento\r\nTirana é um bom nome Foi!\r\nPara quem não sentiu fome\r\nSe ela ainda te enganar\r\nNão vais partir e podes cá ficar', 'pop', 'Toli César Machado', 1, 'GNR'),
(3, 'walk of life', 'Here comes Johnny singing Oldies, Goldies\r\nBe bop a lula, baby, what I say\r\nHere comes Johnny singing I gotta woman\r\nDown in the tunnels, trying to make it pay\r\n\r\nHe got the action, he got the motion\r\nOh yeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\n\r\nHe do the song about the sweet lovin woman\r\nHe do the song about the knife\r\nAnd he do the walk, he do the walk of life\r\nYeah, he do the walk of life\r\n\r\nHere comes Johnny goin tell you the story\r\nHand me down my walkin shoes\r\nHere come Johnny with the power and the glory\r\nBackbeat, the talkin blues\r\n\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\n\r\nHe do the song about the sweet lovin woman\r\nHe do the song about the knife\r\nAnd he do the walk, he do the walk of life\r\nYeah, he do the walk of life\r\n\r\nHere comes Johnny singing oldies, goldies\r\nBe bop a lula, baby what I say\r\nHere comes Johnny singing I Gotta Woman\r\nDown in the tunnels, trying to make it pay\r\n\r\nHe got the action, he got the motion\r\nOh yeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\n\r\nAnd after all the violence and double talk\r\nThere\'s just a song in all the trouble and the strife\r\nYou do the walk, you do the walk of life\r\nHum, you do the walk of life', 'rock', 'Mark Freuder Knopfle', 2, 'Dire Straits'),
(4, 'tunnel of love', 'Getting crazy on the waltzers\r\nBut it\'s the life that I choose\r\nHey, sing about the six blade\r\nSing about the switchback\r\nAnd a torture tattoo\r\n\r\nAnd I\'ve been riding on a ghost train\r\nWhere the cars they scream and slam\r\nAnd I don\'t know where I\'ll be tonight\r\nBut I\'d always tell you where I am\r\n\r\nIn a screaming ring of faces\r\nI seen her standing in the light\r\nShe had a ticket for the races\r\nYeah, just like me, she was a victim of the night\r\n\r\nI put my hand upon the lever\r\nSaid: Let it rock and let it roll\r\nI had the one arm bandit fever\r\nThere was an arrow through my heart and my soul\r\n\r\nAnd the big wheel keep on turning\r\nNeon burning up above\r\nAnd I\'m just high on the world\r\nCome on and take a low ride with me, girl\r\nOn the tunnel of love, yeah, love\r\n\r\nIt\'s just the danger\r\nWhen you\'re riding at your own risk\r\nShe said: You are the perfect stranger\r\nShe said: Baby, let\'s keep it like this\r\n\r\nIt\'s just a cakewalk twisting baby\r\nYeah, step right up and see\r\nHey, misterm give me two, give me two now\r\n\'Cause any two can play\r\n\r\nAnd the big wheel keep on turning\r\nNeon burning up above\r\nAnd I\'m just high on the world\r\nCome on and take a low ride with me girl\r\nOn the tunnel of love, oh, love\r\n\r\nWell, it\'s been money for muscle on another whirligig\r\nMoney for muscle and another girl I dig\r\nAnother hustle just to, just to make it big\r\nAnd rock away, walk away\r\nOh, rock away walk away\r\n\r\nAnd girl it looks so pretty to me\r\nLike it always did\r\nOh, like the Spanish city to me\r\nWhen we were kids\r\nYeah, girl it looks so pretty to me\r\nJust like it always did\r\nOh, like the Spanish city to me\r\nWhen we were kids\r\n\r\nShe took off a silver locket\r\nShe said: Remember me by this\r\nShe put her hand in my pocket\r\nI got a keepsake and a kiss\r\nAnd in the roar of dust and diesel\r\nI stood, I watched her walk away\r\nI could have caught up with her easy enough\r\nBut something must have made me stay\r\n\r\nAnd the big wheel keep on turning\r\nNeon burning up above\r\nAnd I\'m just high on this world\r\nCome on and take a low ride with me girl\r\nOn the tunnel of love, yeah, love, love\r\nOn the tunnel of love, oh, love, love\r\n\r\nAnd now I\'m searching through these carousels and the carnival arcades\r\nSearching everywhere from Steeplechase to Palisades\r\nIn any shooting gallery where promises are made\r\nTo rock away, rock away\r\nWalk away, walk away\r\nFrom Cullercoats and Whitley Bay\r\nOut to walk away\r\n\r\nAnd girl it looks so pretty to me\r\nLike it always did\r\nOh, like the Spanish city to me\r\nWhen we were kids\r\nYeah, girl it looks so pretty to me\r\nJust like it always did\r\nOh, like the Spanish city to me\r\nWhen we were kids', 'rock', 'Mark Freuder Knopfle', 3, 'Dire Straits'),
(5, 'reckless', 'You\'re doin\' it every night\r\nYou play with my emotions\r\nBefore we go and fight - let\'s get one thing straight\r\nIs it gonna be him or me?\r\nYou know I need an answer\r\nNow it\'s down to the wire and it just won\'t wait\r\n\r\nIf there\'s something goin\' on\r\nI wanna hear it from you face to face\r\nYeah, you know it won\'t be long\r\nBefore you make your last mistake\r\n\r\nCause you were\r\nReckless - you\'ve got it comin\' to you\r\nReckless - what am I supposed to do baby?\r\nReckless - guess I\'m a lot like you\r\n\r\nWe gotta talk it out\r\nThere\'s three sides to every story\r\nYa, there\'s your side, there\'s my side and then there\'s the truth\r\nYou say we\'re all the same\r\nBut I know you ain\'t no angel\r\nCause who you gonna blame\r\nWhen you wake up beside some stranger?\r\n\r\nCause you were\r\nReckless - you\'ve got it comin\' to you\r\nReckless - now what am I supposed to do baby?\r\nReckless - guess I\'m a lot like you\r\nGuess I\'m a lot like you\r\nGuess I\'m a lot like you\r\n\r\nIf there\'s something goin\' on\r\nI wanna hear it from you face to face\r\nI know it won\'t be long\r\nBefore you make your last mistake\r\n\r\nYou\'re reckless - you\'ve got it comin\' to you\r\nReckless - what am I supposed to do baby?\r\nReckless\r\n\r\nGuess I\'m a lot like you\r\nGuess I\'m a lot like you\r\nGuess I\'m a lot like you', 'pop', 'Bryan Adams', 4, 'Bryan Adams'),
(6, 'magic', 'Call it magic\r\nCall it true\r\nI call it magic\r\nWhen I\'m with you\r\n\r\nAnd I just got broken\r\nBroken into two\r\nStill I call it magic\r\nWhen I\'m next to you\r\n\r\nAnd I don\'t, and I don\'t, and I don\'t, and I don\'t\r\nNo, I don\'t, it\'s true\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nWant anybody else but you\r\n\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nNo, I don\'t, it\'s true\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nWant anybody else but you\r\n(Ooh, ooh)\r\n\r\nCall it magic\r\nCut me into two\r\nAnd with all your magic\r\nI disappear from view\r\n\r\nAnd I can\'t get over\r\nCan\'t get over you\r\nStill I call it magic\r\nSuch a precious jewel\r\n\r\nAnd I don\'t, and I don\'t, and I don\'t, and I don\'t\r\nNo, I don\'t, it\'s true\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nWant anybody else but you\r\n\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nNo, I don\'t, it\'s true\r\nI don\'t, no, I don\'t, no, I don\'t, no, I don\'t\r\nWant anybody else but you\r\n\r\nWanna fall\r\nI fall so far\r\nI wanna fall\r\nI fall so hard\r\n\r\nAnd I call it magic\r\nAnd I call it true\r\nI call it ma-ma-ma-magic\r\n\r\nOoh, ooh\r\nOoh, ooh\r\nOoh, ooh\r\nOoh, ooh\r\n\r\nAnd if you were to ask me\r\nAfter all that we\'ve been through\r\nStill believe in magic?\r\nOh, yes, I do\r\n\r\nOh, yes, I do\r\nOh, yes, I do\r\nOh, yes, I do\r\nOf course, I do', 'rock', 'Chris Martin', 5, 'Coldplay'),
(7, 'anothers arms', 'Late night watching TV\r\nUsed to be you here beside me\r\nUsed to be your arms around me\r\nYour body on my body\r\n\r\nWhen the world means nothing to me\r\nAnother\'s arms\r\nAnother\'s arms\r\nWhen the pain just rips right through me\r\nAnother\'s arms\r\nAnother\'s arms\r\n\r\nLate night watching TV\r\nUsed to be you here beside me\r\nIs there someone there to reach me?\r\nOr someone there to find me?\r\n\r\nWhen the pain just rips right through me\r\nAnother\'s arms\r\nAnother\'s arms\r\nAnd that\'s just torture to me\r\nAnother\'s arms\r\nAnother\'s arms\r\n\r\nPull yourself into me\r\nAnother\'s arms\r\nAnother\'s arms\r\nWhen the world means nothing to me\r\nAnother\'s arms\r\nAnother\'s arms\r\n\r\nGot to pull you close into me\r\nAnother\'s arms\r\nAnother\'s arms\r\nPull yourself right through me\r\nAnother\'s arms\r\nAnother\'s arms\r\n\r\nLate night watching TV\r\nWish that you were here beside me\r\nWish that your arms were around me\r\nYour body on my body', 'rock', 'Chris Martin', 5, 'Coldplay'),
(8, 'photograph', 'Look at this photograph\r\nEvery time I do, it makes me laugh\r\nHow did our eyes get so red\r\nAnd what the hell is on Joey\'s head?\r\n\r\nAnd this is where I grew up\r\nI think the present owner fixed it up\r\nI never knew we ever went without\r\nThe second floor is hard for sneaking out\r\n\r\nAnd this is where I went to school\r\nMost of the time had better things to do\r\nCriminal record says I broke in twice\r\nI must\'ve done it half a dozen times\r\n\r\nI wonder if it\'s too late\r\nShould I go back and try to graduate?\r\nLife\'s better now than it was back then\r\nIf I was them, I wouldn\'t let me in\r\n\r\nOh, oh, God, I, I\r\n\r\nEvery memory of looking out the back door\r\nI had the photo album spread out on my bedroom floor\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n\r\nEvery memory of walking out the front door\r\nI found the photo of the friend that I was looking for\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n(Goodbye)\r\n\r\nRemember the old arcade?\r\nBlew every dollar that we ever made\r\nThe cops hated us hanging out\r\nThey say somebody went and burned it down\r\n\r\nWe used to listen to the radio\r\nAnd sing along with every song we know\r\nWe said someday we\'d find out how it feels\r\nTo sing to more than just the steering wheel\r\n\r\nKim\'s the first girl I kissed\r\nI was so nervous that I nearly missed\r\nShe\'s had a couple of kids since then\r\nI haven\'t seen her since God knows when\r\n\r\nOh, oh, God, I, I\r\n\r\nEvery memory of looking out the back door\r\nI had the photo album spread out on my bedroom floor\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n\r\nEvery memory of walking out the front door\r\nI found the photo of the friend that I was looking for\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n\r\nI miss that town\r\nI miss their faces\r\nYou can\'t erase\r\nYou can\'t replace it\r\n\r\nI miss it now\r\nI can\'t believe it\r\nSo hard to stay\r\nToo hard to leave it\r\n\r\nIf I could relive those days\r\nI know the one thing that would never change\r\n\r\nEvery memory of looking out the back door\r\nI had the photo album spread out on my bedroom floor\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n\r\nEvery memory of walking out the front door\r\nI found the photo of the friend that I was looking for\r\nIt\'s hard to say it, time to say it\r\nGoodbye, goodbye\r\n\r\nLook at this photograph\r\nEvery time I do, it makes me laugh\r\nEvery time I do, it makes me', 'rock', 'Chad Kroeger', 6, 'Nickelback'),
(9, 'animals', 'Baby, I’m preying on you tonight\r\nHunt you down, eat you alive\r\nJust like animals, animals, like animals-mals\r\nMaybe you think that you can hide\r\nI can smell your scent from miles\r\nJust like animals, animals, like animals-mals\r\nBaby, I\'m\r\n\r\nSo what you trying to do to me?\r\nIt\'s like we can\'t stop, we\'re enemies\r\nBut we get along when I\'m inside you\r\nYou\'re like a drug that\'s killing me\r\nI cut you out entirely\r\nBut I get so high when I\'m inside you\r\n\r\nYeah, you can start over\r\nYou can run free\r\nYou can find another fish in the sea\r\nYou can pretend it’s meant to be\r\nBut you can’t stay away from me\r\nI can still hear you making that sound\r\nTaking me down, rolling on the ground\r\nYou can pretend that it was me, but no, oh\r\n\r\nBaby, I’m preying on you tonight\r\nHunt you down, eat you alive\r\nJust like animals, animals, like animals-mals\r\nMaybe you think that you can hide\r\nI can smell your scent from miles\r\nJust like animals, animals, like animals-mals\r\nBaby, I\'m\r\n\r\nSo if I run, it\'s not enough\r\nYou\'re still in my head, forever stuck\r\nSo you can do what you wanna do\r\nI love your lies, I\'ll eat \'em up\r\nBut don\'t deny the animal\r\nThat comes alive when I\'m inside you\r\n\r\nYeah, you can start over\r\nYou can run free\r\nYou can find another fish in the sea\r\nYou can pretend it’s meant to be\r\nBut you can’t stay away from me\r\nI can still hear you making that sound\r\nTaking me down, rolling on the ground\r\nYou can pretend that it was me, but no, oh\r\n\r\nBaby, I’m preying on you tonight\r\nHunt you down, eat you alive\r\nJust like animals, animals, like animals-mals\r\nMaybe you think that you can hide\r\nI can smell your scent from miles\r\nJust like animals, animals, like animals-mals\r\nBaby, I\'m\r\n\r\nDon’t tell no lie, lie, lie, lie\r\nYou can’t deny, ny, ny, ny\r\nThe beast inside, side, side, side\r\nYeah, yeah, yeah\r\nNo girl don\'t lie, lie, lie, lie (no girl don\'t lie)\r\nYou can\'t deny, ny, ny, ny (you can\'t deny)\r\nThe beast inside, side, side, side\r\nYeah, yeah, yeah\r\n\r\nWoah, woah, woah\r\n\r\nJust like animals, animals, like animals-mals\r\nJust like animals, animals, like animals-mals\r\nAh, oh!\r\n\r\nBaby, I’m preying on you tonight\r\nHunt you down, eat you alive\r\nJust like animals, animals, like animals-mals\r\nMaybe you think that you can hide\r\nI can smell your scent from miles\r\nJust like animals, animals, like animals-mals\r\nBaby, I\'m\r\n\r\nDon’t tell no lie, lie, lie, lie\r\nYou can’t deny, ny, ny, ny (yeah)\r\nThe beast inside, side, side, side\r\nYeah, yeah, yeah\r\nNo girl don\'t lie, lie, lie, lie (no girl don\'t lie)\r\nYou can\'t deny, ny, ny, ny (you can\'t deny)\r\nThe beast inside, side, side, side\r\nYeah, yeah, yeah', 'rock', 'Chad Kroeger', 6, 'Nickelback'),
(10, 'arabella', 'Arabella\'s got some interstellar-gator skin boots\r\nAnd a helter skelter around her little finger and I ride it endlessly\r\nShe\'s got a Barbarella silver swimsuit\r\nAnd when she needs to shelter from reality\r\nShe takes a dip in my daydreams\r\n\r\nMy days end best when this sunset gets itself behind\r\nThat little lady sitting on the passenger side\r\nIt\'s much less picturesque without her catching the light\r\nThe horizon tries, but it\'s just not as kind on the eyes\r\nAs Arabella, oh\r\nAs Arabella\r\n\r\nJust might have tapped into your mind and soul\r\nYou can\'t be sure\r\n\r\nArabella\'s got a 70\'s head\r\nBut she\'s a modern lover\r\nIt\'s an exploration, she\'s made of outer space\r\nAnd her lips are like the galaxy\'s edge\r\nAnd her kiss, the color of a constellation falling into place\r\n\r\nMy days end best when the sunset gets itself behind\r\nThat little lady sitting on the passenger side\r\nIt\'s much less picturesque without her catching the light\r\nThe horizon tries, but it\'s just not as kind on the eyes\r\nAs Arabella, oh\r\nAs Arabella\r\n\r\nJust might have tapped into your mind and soul\r\nYou can\'t be sure\r\n\r\n(That\'s magic) in a cheetah print coat\r\n(Just a slip) underneath it I hope\r\n(Asking if) I can have one of those\r\n(Organic) cigarettes that she smokes\r\n(Wraps her lips) \'round a Mexican coke\r\n(Makes you wish) that you were the bottle\r\n(Takes a sip) of your soul and it sounds like\r\n\r\nJust might have tapped into your mind and soul\r\nYou can\'t be sure', 'rock', 'Alex Turner', 7, 'Artic Monkey'),
(11, 'i want it all', 'Blind faith\r\nHeartache\r\nMind games\r\nMistakes\r\nMy sweet fireball\r\nMy sweet rigmarole\r\nI want it all\r\n\r\nOld dogs\r\nNew tricks\r\nCan you feel it?\r\nSpace age country girl\r\nStone cold miracle\r\nI want it all\r\n\r\nAnd then suddenly it hit me it’s a year ago\r\nSince I drank miniature whiskey and we shared your coke\r\nAin’t it just like you to kiss me and then hit the road\r\nLeave me listening to The Stones\r\n\r\n2000 light years from home\r\n\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\n\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\n\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\nShoo-wop, shoo-wop\r\n\r\nI want it all\r\nI want it all\r\nI want it all\r\nI want it all', 'rock', 'Alex Turner', 7, 'Artic Monkey');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musica_has_produtor`
--

CREATE TABLE `musica_has_produtor` (
  `musica_musicaID` int(11) NOT NULL,
  `musica_nomeAlb` varchar(45) NOT NULL,
  `musica_nomeComp` varchar(45) NOT NULL,
  `produtor_produtorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtor`
--

CREATE TABLE `produtor` (
  `produtorID` int(11) NOT NULL,
  `nomeProd` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtor`
--

INSERT INTO `produtor` (`produtorID`, `nomeProd`) VALUES
(1, 'Mário Barreiros'),
(2, 'Mark Freuder Knopfler'),
(3, 'Bryan Adams'),
(4, 'Max Martin'),
(5, 'Chad Kroeger'),
(6, 'James Ford');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`,`nomeBanda`,`banda_bandaID`),
  ADD KEY `fk_album_banda1_idx` (`banda_bandaID`);

--
-- Índices para tabela `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`artistaID`,`banda_bandaID`),
  ADD KEY `fk_artista_banda1_idx` (`banda_bandaID`);

--
-- Índices para tabela `banda`
--
ALTER TABLE `banda`
  ADD PRIMARY KEY (`bandaID`);

--
-- Índices para tabela `compositor`
--
ALTER TABLE `compositor`
  ADD PRIMARY KEY (`compositorID`);

--
-- Índices para tabela `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`musicaID`,`nomeComp`,`album_albumID`,`album_nomeBanda`),
  ADD KEY `fk_musica_album1_idx` (`album_albumID`,`album_nomeBanda`);

--
-- Índices para tabela `musica_has_produtor`
--
ALTER TABLE `musica_has_produtor`
  ADD PRIMARY KEY (`musica_musicaID`,`musica_nomeAlb`,`musica_nomeComp`,`produtor_produtorID`),
  ADD KEY `fk_musica_has_produtor_produtor1_idx` (`produtor_produtorID`),
  ADD KEY `fk_musica_has_produtor_musica1_idx` (`musica_musicaID`,`musica_nomeAlb`,`musica_nomeComp`),
  ADD KEY `fk_musica_has_produtor_musica1` (`musica_musicaID`,`musica_nomeComp`);

--
-- Índices para tabela `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtorID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `artista`
--
ALTER TABLE `artista`
  MODIFY `artistaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `banda`
--
ALTER TABLE `banda`
  MODIFY `bandaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `compositor`
--
ALTER TABLE `compositor`
  MODIFY `compositorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `musica`
--
ALTER TABLE `musica`
  MODIFY `musicaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `fk_album_banda1` FOREIGN KEY (`banda_bandaID`) REFERENCES `banda` (`bandaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `artista`
--
ALTER TABLE `artista`
  ADD CONSTRAINT `fk_artista_banda1` FOREIGN KEY (`banda_bandaID`) REFERENCES `banda` (`bandaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `musica`
--
ALTER TABLE `musica`
  ADD CONSTRAINT `fk_musica_album1` FOREIGN KEY (`album_albumID`,`album_nomeBanda`) REFERENCES `album` (`albumID`, `nomeBanda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `musica_has_produtor`
--
ALTER TABLE `musica_has_produtor`
  ADD CONSTRAINT `fk_musica_has_produtor_musica1` FOREIGN KEY (`musica_musicaID`,`musica_nomeComp`) REFERENCES `musica` (`musicaID`, `nomeComp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_musica_has_produtor_produtor1` FOREIGN KEY (`produtor_produtorID`) REFERENCES `produtor` (`produtorID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
