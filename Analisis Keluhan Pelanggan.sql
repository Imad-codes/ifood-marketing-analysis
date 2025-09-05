--Complaints Analysis

-- Menghitung jumlah & persentase pelanggan yang pernah complain
SELECT
  COUNTIF(Complain = 1) AS CustomersWithComplaint,   -- jumlah pelanggan yang pernah komplain
  COUNTIF(Complain = 0) AS CustomersWithoutComplaint,-- jumlah pelanggan tanpa komplain
  ROUND(100 * COUNTIF(Complain = 1) / COUNT(*), 2) AS ComplaintRatePct -- persentase komplain
FROM `imad-database.02_ifood_marketing_analysis.marketing_analysis`;               -- sumber data utama
