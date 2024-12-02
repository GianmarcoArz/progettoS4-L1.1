--esercizio 1---------------------------------------------------------

--select * from clienti where clienti.nome = 'Mario';

--esercizio 2---------------------------------------------------------

--select nome , cognome from clienti where clienti.anno_di_nascita = 1982;

--esercizio 3---------------------------------------------------------

--select numero_fattura from fatture where iva = 20;

--esercizio 4---------------------------------------------------------

--select * from prodotti where extract (YEAR from prodotti.data_attivazione) = 2017;

--esercizio 5---------------------------------------------------------

--select * from fatture join clienti on clienti.numero_cliente = fatture.id_cliente where fatture.importo < 1000;

--esercizio 6---------------------------------------------------------

--select numero_fattura,importo,iva,data_fattura,fornitori.denominazione from fatture join fornitori on fatture.numero_fornitore = fornitori.numero_fornitore;

--esercizio 7---------------------------------------------------------

--select extract (year from data_fattura), count (*) as nuemro_fatture_per_anno from fatture where fatture.iva = 20
--group by data_fattura;

--esercizio 8---------------------------------------------------------

--select extract (year from data_fattura) as anno_fattura, count (*) as numero_fatture_per_anno, sum(importo) as totale_importi_annuale from fatture

--esercizio 9-------------------------------------------------------

--select EXTRACT(YEAR FROM data_fattura) as anno_fattura from fatture where fatture.tipologia = 'A'

--group by EXTRACT(YEAR FROM data_fattura)
--having count(numero_Fattura) > 2
--order by anno_fattura;

--esercizio 10-------------------------------------------------------

--select sum(importo) as importi_cliente,clienti.regione_residenza from fatture join clienti on clienti.numero_cliente = fatture.id_cliente

--group by clienti.regione_Residenza