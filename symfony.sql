-- phpMyAdmin SQL Dump
-- version 3.3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 19. November 2010 um 19:00
-- Server Version: 5.1.46
-- PHP-Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `symfony`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `selrel_teilnehmer`
--

CREATE TABLE IF NOT EXISTS `selrel_teilnehmer` (
  `boot` int(255) NOT NULL,
  `teilnehmer` int(255) NOT NULL,
  `sitzplatz` int(1) NOT NULL,
  `verwogen` timestamp NULL DEFAULT NULL,
  `gewicht` float NOT NULL,
  `umgemeldet` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_boot`
--

CREATE TABLE IF NOT EXISTS `tb_boot` (
  `idboot` int(255) NOT NULL AUTO_INCREMENT,
  `nboot` int(2) NOT NULL,
  `idrennenboot` int(255) NOT NULL,
  `bahnboot` int(2) NOT NULL,
  `bezahltboot` time NOT NULL,
  `startnummerboot` int(255) NOT NULL,
  `fehlstartboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stoniertboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hinzugefuegtboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `abgemeldetboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nichtstartberechtigtboot` tinyint(1) NOT NULL,
  `dnsboot` tinyint(1) NOT NULL,
  `dnfboot` tinyint(1) NOT NULL,
  `ausgeschlossenboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gemeldetboot` tinyint(1) NOT NULL COMMENT 'früher ok',
  `zusatzgewichtboot` int(255) NOT NULL,
  `nachgemeldetboot` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessionidboot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alternativmeldungboot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kommentarboot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `obmann` int(11) NOT NULL,
  `lauf` int(11) NOT NULL,
  PRIMARY KEY (`idboot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_essen`
--

CREATE TABLE IF NOT EXISTS `tb_essen` (
  `idessen` int(255) NOT NULL AUTO_INCREMENT,
  `mahlzeit` int(255) NOT NULL,
  `obmann` int(255) NOT NULL,
  `anzahlessen` int(255) NOT NULL,
  PRIMARY KEY (`idessen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_mahlzeit`
--

CREATE TABLE IF NOT EXISTS `tb_mahlzeit` (
  `idmahlzeit` int(11) NOT NULL AUTO_INCREMENT,
  `wasdmahlzeit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wasemahlzeit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wannmahlzeit` timestamp NULL DEFAULT NULL,
  `preismahlzeit` float NOT NULL,
  `regatta` int(255) NOT NULL,
  PRIMARY KEY (`idmahlzeit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_obmann`
--

CREATE TABLE IF NOT EXISTS `tb_obmann` (
  `idobmann` int(255) NOT NULL AUTO_INCREMENT,
  `nameobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vornameobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `strasseobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hausnummerobmmann` int(10) NOT NULL,
  `plzobmann` int(10) NOT NULL,
  `ortobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emailobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionidobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usernameobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pwobmann` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestampobmann` timestamp NULL DEFAULT NULL,
  `verein` int(255) NOT NULL,
  PRIMARY KEY (`idobmann`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_regatta`
--

CREATE TABLE IF NOT EXISTS `tb_regatta` (
  `idregatta` int(11) NOT NULL AUTO_INCREMENT,
  `nameregatta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ortdregatta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orteregatta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datumregatta` date NOT NULL,
  `ausschreibungstextregatta` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idregatta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_startzeit`
--

CREATE TABLE IF NOT EXISTS `tb_startzeit` (
  `startzeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `schiedsrichter` int(11) NOT NULL,
  `gestartetstartzeit` timestamp NULL DEFAULT NULL,
  `durchstartzeit` timestamp NULL DEFAULT NULL,
  `freigegebenstartzeit` timestamp NULL DEFAULT NULL,
  `ausgerichtetstartzeit` timestamp NULL DEFAULT NULL,
  `photofinish` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`startzeit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_teilnehmer`
--

CREATE TABLE IF NOT EXISTS `tb_teilnehmer` (
  `idteilnehmer` int(255) NOT NULL AUTO_INCREMENT,
  `nameteilnehmer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vornameteilnehmer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jahrgangteilnehmer` int(4) NOT NULL,
  `geschlechtteilnehmer` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `titelteilnehmer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startberechtigtteilnehmer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nichtveroeffteilnehmer` tinyint(1) NOT NULL,
  `drvid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regatta` int(255) NOT NULL,
  `verein` int(255) NOT NULL,
  PRIMARY KEY (`idteilnehmer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_verein`
--

CREATE TABLE IF NOT EXISTS `tb_verein` (
  `idverein` int(255) NOT NULL AUTO_INCREMENT,
  `nameverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ortverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kurznameverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letternverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fisakuerzelverein` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regatta` int(255) NOT NULL,
  PRIMARY KEY (`idverein`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
