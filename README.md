netz39-letter
=============

Finaler Letter für Netz39 Korrespondenz

Disclaimer:
Funktioniert nur mit pdflatex

How to:
Wer nichts am Style ändern will, arbeitet nur mit dem netz39_final.tex
Wer sich nicht mit Tex-Briefen auskennt:
Dort den eigenen Namen (Zeile 75), Anschrift (Zeilen 78:83) des Adressaten, Betreff (Zeile 85), Anrede (Zeile 92), Grußformel (Zeile 93) und Textinhalt (alles zwischen 100:125) ändern. Falls Anlagen, etc. entsprechend eintragen.

Change stuff (if you really need too!):
* wenn latex-dvi-ps-pdf, Bild ändern in der cls
* wenn Einträge für Vorstand, etc. nicht sollen: Zeilen 421:423 auskommentieren und 424:428 einkommentieren, in 434 den hinteren Teil benutzen, dito in 436, 437 einkommentieren
* Datum ändern in: Day. Month (Wort) Jahr: Isopacket rausnehmen

UPDATE:
* jetzt neu mit utf8 -- entsprechendes encoding über \documentclass[...]g-brief-ntz39} einstellen, eg ...=utf8
* jetzt neu sans serif -- einschalten:  \documentclass[sans]g-brief-ntz39}, ausschalten: rausnehmen
* moved Vorstand, etc. in die cls.
* moved \Unterschrift, etc. nach \begin{document}: dann kann man auch dort ä,ö,... verwenden
* der Tux hat das jpg umgewandelt \o/

STILL TO DO:
* fontenc (\usepackage{T1}[fontenc]) geht noch nicht
* schickes cls mit Farben O.o
