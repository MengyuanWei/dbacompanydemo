use firmenwelt;
/*
Hinweise:

Wir benutzen die Auto-Inkrement-Funktion hier absichtlich nicht, damit
wir die Referenzen einfacher nachverfolgen können.

Die gleichen Daten k�nnen auch mit der Anwendung
net.gumbix.dba.companydemo.test.ExampleData erzeugt werden.
*/
-- Abteilung (abteilungsNr, bezeichnung)
insert into abteilung(abteilungsNr, bezeichnung)
values (1, 'Management'),
       (2, 'Einkauf'),
       (3, 'Verkauf & Marketing'),
       (4, 'IT'),
       (5, 'Forschung & Entwicklung'),
       (6, 'Produktion'),
       (7, 'Buchhaltung'),
       (8, 'Kundendienst'),
       (9, 'Qualit�tssicherung');

-- Ort (plz, ortsname)
insert into ort(plz, ortsname)
values ('10437', 'Berlin'),
       ('12487', 'Berlin'),
       ('68113', 'Mannheim'),
       ('68163', 'Mannheim'),
       ('68305', 'Mannheim'),
       ('68309', 'Mannheim'),
       ('69115', 'Heidelberg'),
       ('69214', 'Eppelheim');

-- Mitarbeiter (personalNr, vorname, nachname, strasse, hausNr, plz#, gebDatum, abteilungsNr#, funktion, vorgesetzterNr#)
-- Angestellter (personalNr#, telefonNr)
-- Arbeiter (personalNr#, Arbeitsplatz)
insert into mitarbeiter(
                          personalNr,
                          vorname,
                          nachname,
                          strasse,
                          hausNr,
                          plz,
                          gebDatum,
                          gehalt,
                          abteilungsId,
                          funktion,
                          vorgesetzterNr
)
values (1, 'Fransiska', 'Lohe', 'Chefstra�e', '1a', '68305', '1968-01-01 00:00:00', 15000, 1, 'Vorstand', null),
       (2, 'Hans', 'Lindemann', 'Pappelallee', '1a', '10437', '1968-02-21 00:00:00', 4201, 1, 'Personalreferent', 1),
       (3, 'Bernd', 'G�nzler', 'Hauptstra�e', '110b', '68163', '1964-02-05 00:00:00', 5320, 2, 'Eink�ufer', 1),
       (4, 'Simone', 'Richter', 'Ahornweg', '2', '68163', '1971-07-06 00:00:00', 6100, 3, 'Verkaufsleitung', 1),
       (5, 'Marcus', 'Reinhard', 'Hauptstra�e', '11', '68163', '1973-06-20 00:00:00', 4210, 3, 'Verk�ufer', 4),
       (6, 'Paul', 'Uhl', 'Langestra�e', '1', '68163', '1982-05-20 00:00:00', 4210, 3, 'Verk�ufer', 4),
       (7, 'Frank', 'Simon', 'Holzweg', '23', '68163', '1971-11-20 00:00:00', 5900, 8, 'Kundendienstleitung', 1),
       (8, 'Karl', 'Nix', 'Ritterstra�e', '12', '68163', '1961-10-12 00:00:00', 3280, 8, 'Service-Mitarbeiter', 7),
       (9, 'Peter', 'Ziegler', 'Ulmenweg', '34', '69115', '1967-02-13 00:00:00', 7100, 4, 'IT-Leiter', 1),
       (10, 'Thomas', 'Bauer', 'Dorfstra�e', '1a', '68309', '1985-03-24 00:00:00', 4100, 4, 'Sys.-Admin', 9),
       (11, 'Walter', 'M�ller', 'Flussweg', '23', '68113', '1949-03-11 00:00:00', 5000, 6, 'Produktionsleiter', 1),
       (12, 'August', 'Kleinschmidt', 'Wasserturmstra�e', '29', '69214', '1955-08-23 00:00:00', 3800, 6, 'Nachf�ller', 11),
       (13, 'Peter', 'Ziegler', 'Wasserweg', '4', '69115', '1961-12-15 00:00:00', 3600, 6, 'Auff�ller', 11),
       (14, 'Hanna', 'Schmidt', 'Wasserweg', '16', '69115', '1977-11-29 00:00:00', 3550, 6, 'Auff�ller', 11),
       (15, 'Justin', 'Albrecht', 'Liesgewann', '6', '69115', '1991-10-09 00:00:00', 1200, 6, 'Azubi', 14),
       (16, 'Jan', 'Fischer, Dr.', 'Untere stra�e', '2', '68163', '1968-05-10 00:00:00', 6900, 5, 'F&E_Leiter', 1),
       (17, 'Sabrina', 'Walther, Dr.', 'Hansaweg', '22', '68163', '1978-08-16 00:00:00', 5990, 5, 'CAD-Experte', 16),
       (18, 'Max', 'Thorn', 'Hauptstra�e', '110a', '68163', '1956-03-01 00:00:00', 5800, 5, 'Ingenieur', 16),
       (19, 'Lutz', 'Fischer', 'Ulmenweg', '18', '68163', '1959-06-07 00:00:00', 4900, 7, 'Chefbuchhalter', 1),
       (20, 'Jennifer', 'Klein', 'Lindenweg', '12', '68305', '1979-03-01 00:00:00', 3850, 7, 'Buchhalter', 19),
       (21, 'Gisela', 'Wei�', 'Unter den Linden', '141', '12487', '1959-09-10 00:00:00', 6280, null, 'Berater', 1);

insert into arbeiter(personalNr, arbeitsplatz)
values (12, 'Halle A/Platz 30'), (13, 'Halle A/Platz 31'), (14, 'Halle A/Platz 32'), (15, 'Halle A/Platz 33');

insert into angestellter(personalNr, telefonNr)
values (1, '+49 621 12345-100'),
       (2, '+49 621 12345-110'),
       (3, '+49 621 12345-200'),
       (4, '+49 621 12345-300'),
       (5, '+49 621 12345-310'),
       (6, '+49 621 12345-320'),
       (7, '+49 621 12345-330'),
       (8, '+49 621 12345-340'),
       (9, '+49 621 12345-400'),
       (10, '+49 621 12345-410'),
       (11, '+49 621 12345-500'),
       (16, '+49 621 12345-600'),
       (17, '+49 621 12345-610'),
       (18, '+49 621 12345-620'),
       (19, '+49 621 12345-700'),
       (20, '+49 621 12345-710'),
       (21, '+49 621 12345-599');

-- Auto (modell, marke)
insert into Auto
values ('Passat', 'VW'), ('S-Klasse', 'Mercedes'), ('Touran', 'VW');

-- Firmenwagen (nummernschild, modell#, personalNr#)
insert into firmenwagen(nummernschild, modell, personalNr)
values ('MA-MA 1234', 'S-Klasse', 1),
       ('MA-MA 1235', 'Passat', 11),
       ('MA-MA 1236', 'Touran', 16),
       ('MA-MA 1237', 'Passat', 4),
       ('MA-MA 1238', 'Touran', null),
       ('MA-MA 1240', 'Passat', 7),
       ('MA-MA 1241', 'Passat', 8);

-- Projekt (projektNr, bezeichnung)
insert into projekt(projektId, bezeichnung, naechsteStatusNummer)
values ('DBP', 'DB portieren', 2),
       ('FOP', 'Neues Produkt entwickeln', 6),
       ('LES', 'Personal einstellen', 6),
       ('SEC', 'Security-Konzept f�r Firma', 2);
       
-- MitarbeiterArbeitetAnProjekt (personalNr#, projektNr#, prozAnteil, taetigkeit)
insert into mitarbeiterarbeitetanprojekt(personalNr, projektId, taetigkeit, prozAnteil)
values (1, 'LES', 'Vertr�ge ausstellen', 10),
       (9, 'DBP', 'Architektur entwerfen', 20),
       (9, 'SEC', 'Security-Konzept entwerfen', 40),
       (10, 'DBP', 'Skripte schreiben', 70),
       (10, 'SEC', 'Hacking', 40),
       (17, 'FOP', 'Modelle entwerfen', 50),
       (18, 'FOP', 'Thermodynamik berechnen', 100),
       (21, 'SEC', 'SQL-Code-Injection-Beratung', 100);

insert into statusbericht(projektId, fortlaufendeNr, datum, inhalt)
values ('FOP', 3, '2012-09-17 00:00:00', 'Das ist der erste Statusbericht'),
       ('FOP', 5, '2012-09-28 00:00:00', 'Fortschritte beim Modell'),
       ('LES', 3, '2011-11-17 00:00:00', 'Das ist der erste Statusbericht'),
       ('LES', 5, '2011-11-18 00:00:00', 'Das ist noch ein Statusbericht');