SELECT pd.prescriptionID, 
 SUM(pd.quantity * m.price) AS TotalCost
 FROM PrescriptionDetails pd
 JOIN Medicine m ON pd.medicineID = m.medicineID
 GROUP BY pd.prescriptionID;
