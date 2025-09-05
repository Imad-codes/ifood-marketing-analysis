--Spending Pattern

-- Menghitung total spending per kategori produk
SELECT
  SUM(MntWines) AS TotalWine,                       -- total belanja untuk wine
  SUM(MntFruits) AS TotalFruit,                     -- total belanja untuk buah
  SUM(MntMeatProducts) AS TotalMeat,                -- total belanja untuk daging
  SUM(MntFishProducts) AS TotalFish,                -- total belanja untuk ikan
  SUM(MntSweetProducts) AS TotalSweet,              -- total belanja untuk permen/manisan
  SUM(MntGoldProds) AS TotalGold                    -- total belanja untuk produk emas
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`;               -- tabel utama
