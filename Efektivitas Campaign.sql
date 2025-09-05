--Campaign Effectiveness

-- Mengukur tingkat penerimaan campaign marketing (Cmp1–Cmp5 + Response terakhir)
SELECT
  'Campaign 1' AS Campaign,                        -- memberi label Campaign 1
  ROUND(100 * SUM(AcceptedCmp1) / COUNT(*), 2) AS AcceptanceRate  -- hitung persentase campaign 1 diterima
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`               -- ambil data dari tabel utama
UNION ALL                                          -- gabungkan hasil dengan campaign lain
SELECT
  'Campaign 2',                                    -- label Campaign 2
  ROUND(100 * SUM(AcceptedCmp2) / COUNT(*), 2)     -- persentase campaign 2 diterima
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`
UNION ALL
SELECT
  'Campaign 3',                                    -- label Campaign 3
  ROUND(100 * SUM(AcceptedCmp3) / COUNT(*), 2)     -- persentase campaign 3 diterima
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`
UNION ALL
SELECT
  'Campaign 4',                                    -- label Campaign 4
  ROUND(100 * SUM(AcceptedCmp4) / COUNT(*), 2)     -- persentase campaign 4 diterima
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`
UNION ALL
SELECT
  'Campaign 5',                                    -- label Campaign 5
  ROUND(100 * SUM(AcceptedCmp5) / COUNT(*), 2)     -- persentase campaign 5 diterima
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`
UNION ALL
SELECT
  'Last Campaign Response',                        -- label campaign terakhir
  ROUND(100 * SUM(Response) / COUNT(*), 2)         -- persentase response terakhir
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`;
