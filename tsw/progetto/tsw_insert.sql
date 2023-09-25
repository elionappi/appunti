use Viking_Nutrition;

insert into Utenti(username, email, psw, tipo) values
("elio", "eliodoronappi2003@gmail.com", "1234", 1),
("giovanni", "g.palmigiano2@studenti.unisa.it", "1234", 1);

insert into Anagrafica(ID_utente, nome, cognome, tel, indirizzo, citta, CAP) values
(1, "Eliodoro", "Nappi", "3388945696", "Via Spinelli tr. Basile 7", "Scafati", 84018),
(2, "Giovanni Pio", "Palmigiano", "3456695047", "Via Serafino Roberto 77", "Striano", 80040);

insert into Categorie(nome) values
("Creatina"),
("Proteine"),
("Snack"),
("Vitamine"),
("Barrette");

insert into Prodotti(nome, prezzo, descrizione, ID_categoria) values
("Creatina Monoidrato 250gr", 18.99, "Si tratta di una delle forme di creatina più ricercate al mondo ed è scientificamente provato che la nostra polvere efficace aumenta le prestazioni fisiche1, migliorando la potenza complessiva.", 1),

("Creatina Micronizzata 245 cps", 38.99, "La nostra creatina micronizzata fornisce la massima carica per ottenere i massimi risultati: con le nostre comode capsule le tue prestazioni miglioreranno, per sollevare pesi o per uno sprint.", 1),

("Caramelle Gommose a Base di Creatina", 28.99, "Il modo più pratico e squisito di fare il pieno di creatina. Un integratore comprovato che incrementa le prestazioni fisiche1, ora disponibile in caramelle gommose dal gusto agrumato di limone.

Queste caramelle gommose sono una fonte saporita di creatina monoidrato. Basta assumente sei caramelle gommose per ottenere la tua spinta giornaliera di creatina, che ti renderà imbattibile in palestra, in campo o sull’erba. ",1),

("Caramelle gommose proteiche 56 cps", 22.52, "Se sei alla ricerca di un modo gustoso per mantenere il giusto apporto di proteine, queste caramelle gommose proteiche squisitamente cremose praticissime e golose rappresentano l’opzione perfetta per fare il pieno di energia.

Le caramelle gommose proteiche dal gusto fruttato e avvolgente contengono ben 10 g di proteine di siero di latte di alta qualità per ogni porzione da otto caramelle, contribuendo così al mantenimento e alla crescita della massa muscolare.", 2),

("Cioccolata Calda Proteica 1kg", 16.71, "Grazie al 70% in meno di zuccheri e carboidrati rispetto a molte alternative standard del supermercato, potrai gustarti questa squisita cioccolata calda senza che influisca sui risultati dei tuoi allenamenti.", 2),

("Miscela Proteica Vegana 1kg", 21.27, "Del tutto priva di prodotti indesiderati, questa miscela al 100% naturale contiene aminoacidi essenziali e 24g di proteine a porzione, che la rendono perfetta per chiunque desideri provare una dieta vegetale.", 2),

("Burro d’arachidi al naturale 1kg", 8.49, "Prodotto usando un mix di arachidi tostate, il nostro Burro d’arachidi al naturale è ricco di proteine e fibre, che lo rendono l’aggiunta ideale ai tuoi frullati post-allenamento o ai tuoi snack mattutini.", 3),

("Burro di Mandorle al Naturale 1kg", 24.99, "Il Burro di Mandorle al Naturale è una miscela di mandorle tostate perfetta per uno spuntino ricco di proteine, che ti puoi gustare in qualsiasi momento della giornata. Senza sale, zucchero, olio di palma e conservanti aggiunti, questo classico snack è un modo dolce e semplice per mantenere in carreggiata il tuo allenamento.", 3),

("Crema Proteica Nocciole 360gr", 7.49, "Un appello agli amanti del cioccolato: con le nostre Creme Proteiche dal gusto irresistibile, la bontà del cacao saprà regalare il massimo piacere.
", 3),

("Zinco e Magnesio 30cps", 4.49, "Zinco e magnesio sono minerali essenziali che vantano un serie impressionante di benefici per il corpo, questo li rende un partner perfetto in qualsiasi regime di allenamento. Inoltre, abbiamo aggiunto la vitamina B6 alla miscela, che è ottima per tenere a bada la fatica.", 4),

("Calcio e Magnesio 90cps", 5.60, "Queste capsule sono la semplice soluzione per assicurarti di assumere l'apporto necessario di calcio e magnesio, micronutrienti essenziali coinvolti in molte funzioni vitali dell'organismo, come il metabolismo, la funzione muscolare e il bilancio elettrolitico.", 4),

("Estratto di Tè Verde Plus", 6.00, "Le nostre compresse superconcentrate, adatte anche a chi segue una dieta vegana, sono la carica perfetta quando ne hai maggiormente bisogno, grazie a ben 67,5 mg di importanti polifenoli per sostenerti nei tuoi allenamenti.", 4),

("Wafer con ripieno alla nocciola 12x24gr", 16.99, "Il wafer con ripieno alla nocciola è uno spuntino unico tutto da assaporare. Con un delizioso wafer ricoperto di cioccolato al latte e decorato con fili di cioccolato e un ripieno cremoso alla nocciola arricchito con proteine, puoi concederti uno snack incredibilmente goloso senza alcun senso di colpa.", 5),

("Barretta Magra a Strati 6x40gr", 14.99, "Da concederti tra i pasti, prima o dopo l’allenamento o semplicemente per placare la voglia di dolce. La nostra barretta magra a strati è una deliziosa barretta a due strati avvolta in una glassa gusto cioccolato e decorata con chips di proteine croccanti.", 5),

("Cookie Proteico Light 12pcs", 22.49, "Preparati con 25 g di proteine del latte, farina d'avena e una spolverata di gocce di cioccolato, i nostri Cookies magri sono lo spuntino perfetto per soddisfare le voglie di dolce.", 5);



insert into Promo(codice, sconto, nome, ID_categoria) values
("PRIMAVERA20", 20, "-20% con il codice PRIMAVERA20", 1),
("PROTEIN50", 50, "-50% su tutte le proteine", 2);

