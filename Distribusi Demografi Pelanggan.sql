--Demographic Distribution

-- Distribusi pelanggan berdasarkan Education & Marital Status
SELECT
  -- mapping education dummy ke satu kolom Education
  CASE
    WHEN Education_Basic = 1 THEN 'Basic'
    WHEN Education_Graduation = 1 THEN 'Graduation'
    WHEN Education_Master = 1 THEN 'Master'
    WHEN Education_PhD = 1 THEN 'PhD'
    ELSE 'Other'
  END AS Education,                                 -- hasil kategori pendidikan

  -- mapping marital dummy ke satu kolom Marital
  CASE
    WHEN Marital_Single = 1 THEN 'Single'
    WHEN Marital_Married = 1 THEN 'Married'
    WHEN Marital_Together = 1 THEN 'Together'
    WHEN Marital_Divorced = 1 THEN 'Divorced'
    WHEN Marital_Widow = 1 THEN 'Widow'
    ELSE 'Other'
  END AS Marital,                                   -- hasil kategori marital

  COUNT(*) AS CustomerCount,                        -- jumlah pelanggan per kombinasi
  ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS Percentage -- persentase dari total
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`
GROUP BY Education, Marital                         -- kelompokkan berdasarkan hasil case
ORDER BY CustomerCount DESC;                        -- urutkan jumlah terbanyak
