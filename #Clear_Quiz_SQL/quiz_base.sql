-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Sie 2023, 16:33
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quiz_base`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `flashcards_user`
--

CREATE TABLE `flashcards_user` (
  `id_user` int(11) NOT NULL,
  `number_flash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nquiz`
--

CREATE TABLE `nquiz` (
  `id_quiz` int(11) NOT NULL,
  `name_quiz` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `nquiz`
--

INSERT INTO `nquiz` (`id_quiz`, `name_quiz`) VALUES
(1, 'Mathematics'),
(2, 'Nature'),
(3, 'Programming languages'),
(4, 'Sport');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `q1`
--

CREATE TABLE `q1` (
  `id_question` int(11) NOT NULL,
  `question` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `answers` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `q1`
--

INSERT INTO `q1` (`id_question`, `question`, `answers`) VALUES
(1, 'What is the formula for the area of the square?', '|a^2:|a*b|a/b'),
(2, 'The Pythagorean theorem is given by the formula:', '|(a/b)/c = d|a^2 + b^2 = c^2:|a^2 + sqrt(b) = c^2'),
(3, 'Can we divide by zero?', '|Yes|No:'),
(4, 'What is the formula for a cube?', '|a^2 + b^2|a^4|b+a|a^3:');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `q2`
--

CREATE TABLE `q2` (
  `id_question` int(11) NOT NULL,
  `question` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `answers` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `q2`
--

INSERT INTO `q2` (`id_question`, `question`, `answers`) VALUES
(1, 'Is the bird a mammal?', '|No:|Yes'),
(2, 'How many pwas does a cat have?', '|3|4:|5'),
(3, 'Is a tiger in the cat family?', '|Yes:|No'),
(4, 'What letter do we denote east?', '|N|W|E:|S');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `q3`
--

CREATE TABLE `q3` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answers` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `q3`
--

INSERT INTO `q3` (`id_question`, `question`, `answers`) VALUES
(1, 'Which language is NOT a programming language?', '|C++|HTML:|Kotlin|JavaScript'),
(2, 'How do you call a low-level programming language in which there is a very strong correspondence between \r\nthe instructions in the language and the architecture\'s machine code?', '|Low language|Assembler Language|Assembly Language:|Pascal'),
(3, 'In which programming language is bash shell written?', '|Pascal|C++|Java|C:'),
(4, 'In which programming language is Windows\' core written?', '|C:|C++|Objective C|other');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `q4`
--

CREATE TABLE `q4` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answers` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `q4`
--

INSERT INTO `q4` (`id_question`, `question`, `answers`) VALUES
(1, 'How many players of one team are at the same time on basketball court?', '|3|4|6|5:'),
(2, 'What is a name of    a method of restarting play in association football, in which a player is \r\nallowed to take a single shot on the goal while it is defended only by the opposing team\'s goalkeeper?', '|A penalty kick:|Free kick|The Corner Kick'),
(3, 'What is a name of a team sport in which two teams of six players are separated by a net?', '|Football| Volleyball:|Basketball|Rugby'),
(4, 'What is called a sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible?', '|Rugby|Golf:|Basketball|Football');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id_user` int(11) NOT NULL,
  `number_quiz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nick` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `haslo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vkey` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `flashcards_user`
--
ALTER TABLE `flashcards_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeksy dla tabeli `nquiz`
--
ALTER TABLE `nquiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeksy dla tabeli `q1`
--
ALTER TABLE `q1`
  ADD PRIMARY KEY (`id_question`);

--
-- Indeksy dla tabeli `q2`
--
ALTER TABLE `q2`
  ADD PRIMARY KEY (`id_question`);

--
-- Indeksy dla tabeli `q3`
--
ALTER TABLE `q3`
  ADD PRIMARY KEY (`id_question`);

--
-- Indeksy dla tabeli `q4`
--
ALTER TABLE `q4`
  ADD PRIMARY KEY (`id_question`);

--
-- Indeksy dla tabeli `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
