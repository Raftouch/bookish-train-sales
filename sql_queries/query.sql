CREATE TABLE 'ventes_0' ('c1' TEXT,'c2' TEXT,'c3' TEXT,'c4' TEXT,'c5' TEXT);
INSERT INTO 'ventes_0' (c1,c2,c3,c4,c5) VALUES 
 ('date','produit','prix','qte','region'), 
 ('2022-01-01','Produit A','10','100','Nord'), 
 ('2022-01-02','Produit B','15','50','Nord'), 
 ('2022-01-02','Produit A','10','75','Sud'), 
 ('2022-01-03','Produit C','20','30','Nord'), 
 ('2022-01-03','Produit A','10','150','Sud'), 
 ('2022-01-04','Produit B','15','75','Nord'), 
 ('2022-01-04','Produit C','20','50','Sud'), 
 ('2022-01-05','Produit A','10','125','Nord'), 
 ('2022-01-05','Produit B','15','100','Sud'), 
 ('2022-01-06','Produit C','20','25','Nord'), 
 ('2022-01-06','Produit A','10','100','Sud'), 
 ('2022-01-07','Produit B','15','60','Nord'), 
 ('2022-01-07','Produit C','20','40','Sud'), 
 ('2022-01-08','Produit A','10','80','Nord'), 
 ('2022-01-08','Produit B','15','90','Sud'), 
 ('2022-01-09','Produit C','20','35','Nord'), 
 ('2022-01-09','Produit A','10','120','Sud'), 
 ('2022-01-10','Produit B','15','70','Nord'), 
 ('2022-01-10','Produit C','20','60','Sud'), 
 ('2022-01-11','Produit A','10','150','Nord'), 
 ('2022-01-11','Produit B','15','80','Sud'), 
 ('2022-01-12','Produit C','20','40','Nord'), 
 ('2022-01-12','Produit A','10','200','Sud'), 
 ('2022-01-13','Produit B','15','100','Nord'), 
 ('2022-01-13','Produit C','20','60','Sud'), 
 ('2022-01-14','Produit A','10','120','Nord'), 
 ('2022-01-14','Produit B','15','50','Sud'), 
 ('2022-01-15','Produit C','20','30','Nord'), 
 ('2022-01-15','Produit A','10','75','Sud'), 
 ('2022-01-16','Produit B','15','90','Nord'), 
 ('2022-01-16','Produit C','20','75','Sud'), 
 ('2022-01-17','Produit A','10','180','Nord'), 
 ('2022-01-17','Produit B','15','100','Sud'), 
 ('2022-01-18','Produit C','20','50','Nord'), 
 ('2022-01-18','Produit A','10','150','Sud'), 
 ('2022-01-19','Produit B','15','70','Nord'), 
 ('2022-01-19','Produit C','20','80','Sud'), 
 ('2022-01-20','Produit A','10','125','Nord'), 
 ('2022-01-20','Produit B','15','120','Sud');

ALTER TABLE ventes_0 RENAME COLUMN c1 TO date;
ALTER TABLE ventes_0 RENAME COLUMN c2 TO produit;
ALTER TABLE ventes_0 RENAME COLUMN c3 TO prix;
ALTER TABLE ventes_0 RENAME COLUMN c4 TO qte;
ALTER TABLE ventes_0 RENAME COLUMN c5 TO region;


CREATE TABLE ventes (date TEXT, produit TEXT, prix INTEGER, qte INTEGER, region TEXT)

INSERT INTO ventes (date, produit, prix, qte, region)
SELECT date, produit, CAST(prix AS INTEGER), CAST(qte AS INTEGER), region
FROM ventes_0;

SELECT SUM(prix * qte) AS chiffre_affaires_total FROM ventes

SELECT produit, SUM(prix * qte) AS ventes_par_produit FROM ventes GROUP BY produit

SELECT region, SUM(prix * qte) AS ventes_par_region FROM ventes GROUP BY region