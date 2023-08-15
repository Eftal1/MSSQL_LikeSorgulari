
--Like Sorgular�

-- % (Genel �nemli De�il) Operat�r� 

-- �sminin ba� harfi J olan personellerin ad�n� ve soyad�n� yazd�ral�m. 
SELECT * FROM Personeller WHERE Adi LIKE 'J%'
-- �sminin son harfi Y olan personellerin ad�n� ve soyad�n� yazd�ral�m. 
SELECT * FROM Personeller WHERE Adi LIKE '%Y'
-- �sminin son �� harfi ert olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '%ert' 
-- �sminin ilk harfi r, son harfi t olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'  
-- �sminde an ge�en personelin ad�n� yazd�ral�m. 
SELECT * FROM Personeller WHERE Adi LIKE '%AN%'
-- �sminin ba� harfi n olan ve i�erisinde an ge�en personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'

-- _ (�zel �nemli De�il) Operator� Yani Alt Tireyi kulland���m�z karakter o anki karakterin �nemli olmad���n� belirtir. 

-- �sminin ilk harfi a, ikinci harfi farketmez ve ���nc� harfi d olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'
-- �sminin ilk harfi m, ikinci, ���nc�, d�rd�nc� harfi farketmez ve be�inci harfi a olan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [] (ya da) Operat�r� / Ya da mant��� i�erir. 
-- �sminin ilk harfi n ya da m ya da r olan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '[nm]%'
-- �sminin i�erisinde a ya da i ge�en personelleri listeyelim.
SELECT * FROM Personeller WHERE Adi LIKE '[ai]%'
-- [*-*] (Alfabetik Aras�nda) Operat�r� Y�ld�z karakterleri ilgili karakterler aras�ndaki t�m karakterleri listeler. 
-- �sminin ba� harfi a ile k aras�nda alfabetik s�raya g�re listeyeleyim.
SELECT * FROM Personeller WHERE Adi LIKE '[a-k]%'
--[^*](De�il) Operat�r�
-- �sminin ba� harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'
-- �sminin ba� harfi an olmayan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'

