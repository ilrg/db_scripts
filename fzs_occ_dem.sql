DROP table occ_mapset_dem;

CREATE table occ_mapset_dem as(
SELECT fed.jurisdiction,fed.village, 
  	  ST_Union(fed.geom) as singlegeom,
	 ST_Area(ST_Transform(ST_Union(ST_MakeValid(p.geom)), 32736))/10000 as area,
	  ST_XMax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_XMin(ST_Transform(ST_Union(fed.geom), 32736)) as x,
	  ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)) as y,
	   CASE 
	   when (ST_XMax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))) > (((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))) /1.45)
		THEN 'L' 
		ELSE 'P' 
		END AS t_paper,
	   
	   
	   CASE 
	   WHEN ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45
	   THEN 'L' 
	   ELSE 'P'
	   END AS Orientation,
	  ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_XMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) as paper_p,
	  ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) as paper_l,
CASE 
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) < .297 THEN 'A4'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .297 and  .42  THEN 'A3'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .42 and  .594 THEN 'A2'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .594 and  .841  THEN 'A1'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .841 and  1.189 THEN 'A0'
	   WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   <
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) > 1.189 THEN 'A0'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) < .21 THEN 'A4'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .21 and  .297  THEN 'A3'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45) AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .297 and  .42 THEN 'A2'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .42 and  .594  THEN 'A1'
WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) BETWEEN .594 and  .841 THEN 'A0'
	   WHEN (ST_Ymax (ST_Transform(ST_Union(fed.geom), 32736))-(ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))
	   >
	   ((ST_XMax(ST_Transform(ST_Union(fed.geom), 32736))) - (ST_XMin(ST_Transform(ST_Union(fed.geom), 32736))))*1.45)  AND ((ST_Ymax(ST_Transform(ST_Union(fed.geom), 32736)) - ST_YMin(ST_Transform(ST_Union(fed.geom), 32736)))/5000) > .841 THEN 'A0'
END AS paper_size
	  
	  FROM form_e1_demarcations fed 
LEFT join parcels p on ( fed.parcel_id = p.id_parcel)
GROUP BY fed.jurisdiction,fed.village
ORDER BY fed.village
);
