
--Like Sorgularý

-- % (Genel Önemli Deðil) Operatörü 

-- Ýsminin baþ harfi J olan personellerin adýný ve soyadýný yazdýralým. 
SELECT * FROM Personeller WHERE Adi LIKE 'J%'
-- Ýsminin son harfi Y olan personellerin adýný ve soyadýný yazdýralým. 
SELECT * FROM Personeller WHERE Adi LIKE '%Y'
-- Ýsminin son üç harfi ert olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '%ert' 
-- Ýsminin ilk harfi r, son harfi t olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'  
-- Ýsminde an geçen personelin adýný yazdýralým. 
SELECT * FROM Personeller WHERE Adi LIKE '%AN%'
-- Ýsminin baþ harfi n olan ve içerisinde an geçen personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'

-- _ (Özel Önemli Deðil) Operatorü Yani Alt Tireyi kullandýðýmýz karakter o anki karakterin önemli olmadýðýný belirtir. 

-- Ýsminin ilk harfi a, ikinci harfi farketmez ve üçüncü harfi d olan personeli getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'
-- Ýsminin ilk harfi m, ikinci, üçüncü, dördüncü harfi farketmez ve beþinci harfi a olan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [] (ya da) Operatörü / Ya da mantýðý içerir. 
-- Ýsminin ilk harfi n ya da m ya da r olan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '[nm]%'
-- Ýsminin içerisinde a ya da i geçen personelleri listeyelim.
SELECT * FROM Personeller WHERE Adi LIKE '[ai]%'
-- [*-*] (Alfabetik Arasýnda) Operatörü Yýldýz karakterleri ilgili karakterler arasýndaki tüm karakterleri listeler. 
-- Ýsminin baþ harfi a ile k arasýnda alfabetik sýraya göre listeyeleyim.
SELECT * FROM Personeller WHERE Adi LIKE '[a-k]%'
--[^*](Deðil) Operatörü
-- Ýsminin baþ harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'
-- Ýsminin baþ harfi an olmayan personelleri getirelim. 
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'

