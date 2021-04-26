-- Query 0: Selecting all nanoformulations
SELECT *
FROM np_charc AS dls,
     nanoformulations AS n,
     researcher AS r
WHERE n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id";


-- Query 1: Selecting all dls values and formulation methodologies for a
-- specific nanoparticle size.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology"
FROM np_charc AS dls,
     nanoformulations AS n,
     researcher AS r
WHERE dls."size" BETWEEN 50 AND 100 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id";

-- Query 2: Selecting all dls values and formulation methodologies for a
-- specific nanoparticle size and zeta potential.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id";

-- Query 3: Selecting all dls values and formulation methodologies details for a
-- specific nanoparticle size, zeta potential, and polydisperity index.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      dls."pdi" BETWEEN 0 AND 0.2 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id";

-- Query 4: Selecting all dls values and single emulsion details for a
-- specific nanoparticle size, zeta potential, and polydisperity index.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology",
       s."polymer",
       s."polymer_mass",
       s."polymer_ratio",
       s."np_loading",
       s."loading_mass",
       s."time",
       s."amplitude",
       s."as_volume",
       s."aqueous_solution",
       s."as_percent",
       s."sink_volume",
       s."sink",
       s."sink_percent"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     single_emulsion as s
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      dls."pdi" BETWEEN 0 AND 0.2 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      s."formulation_id" = n."formulation_id";

-- Query 5: Selecting all dls values and double emulsion details for a
-- specific nanoparticle size, zeta potential, and polydisperity index.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology",
       d."polymer",
       d."polymer_mass",
       d."np_loading",
       d."loading_mass",
       d."time_1",
       d."amplitude_1",
       d."time_2",
       d."amplitude_2",
       d."time_2",
       d."amplitude_2",
       d."as_volume1",
       d."aqueous_solution1",
       d."as_percent1",
       d."as_volume2",
       d."aqueous_solution2",
       d."as_percent2",
       d."sink_volume",
       d."sink",
       d."sink_percent"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     double_emulsion as d
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      dls."pdi" BETWEEN 0 AND 0.2 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      d."formulation_id" = n."formulation_id";

-- Query 6: Selecting all dls values and nanoprecipitation details for a
-- specific nanoparticle size, zeta potential, and polydisperity index.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology",
       np."polymer",
       np."polymer_mass",
       np."np_loading",
       np."loading_mass",
       np."sink_volume",
       np."sink",
       np."sink_percent"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     nanoprecipitation as np
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      dls."pdi" BETWEEN 0 AND 0.2 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      np."formulation_id" = n."formulation_id";

-- Query 7: Selecting all dls values and reverse formulation details for a
-- specific nanoparticle size, zeta potential, and polydisperity index.
SELECT dls."charc_id",
       n."formulation_id",
       n."researcher_id",
       r."first_name",
       r."last_name",
       dls."size_measurement",
       dls."size",
       dls."size_sem",
       dls."pdi",
       dls."pdi_sem",
       dls."zp",
       dls."zp_sem",
       n."methodology",
       rf."polymer",
       rf."surfactant"
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     reverse_formulation as rf
WHERE dls."size" BETWEEN 50 AND 100 AND
      dls."zp" BETWEEN -10 AND 10 AND
      dls."pdi" BETWEEN 0 AND 0.2 AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      rf."formulation_id" = n."formulation_id";

-- Query 8: Grabbing all of Nuo's Nanoprecipitations to study charge with
-- change in curcumin and surfanctant
SELECT *
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     nanoprecipitation as np
WHERE r."first_name" = 'Nuo' AND
      np."polymer" = '45k PLGA' AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      np."formulation_id" = n."formulation_id";


-- Query 9a: Grabbing all of Nuo's nanoprecipt data with 1%P80 or DI water
SELECT *
FROM np_charc AS dls,
     nanoformulations as n,
     researcher as r,
     nanoprecipitation as np
WHERE r."first_name" = 'Nuo' AND
      np."sink" = 'P80' AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      np."formulation_id" = n."formulation_id";

SELECT *
FROM np_charc AS dls,
      nanoformulations as n,
      researcher as r,
      nanoprecipitation as np
WHERE r."first_name" = 'Nuo' AND
      np."sink" = 'DI water' AND
      n."formulation_id" = dls."formulation_id" AND
      n."researcher_id" = r."researcher_id" AND
      np."formulation_id" = n."formulation_id";

-- Query 10a: Nanformulations in biological application for nanoprecip
SELECT *
FROM experiment AS ex,
     ldh_assay AS ldh,
     researcher AS r,
     nanoformulations AS n,
     pup_info AS pup,
     np_charc AS np,
     nanoprecipitation AS nano

WHERE ex."experiment_id" = 'ex1' AND
      ldh."ex_id" = ex."experiment_id" AND
      r."researcher_id" = ldh."researcher_id" AND
      ldh."formulation_id" = n."formulation_id" AND
      ldh."specimen_id" = pup."specimen_id" AND
      np."formulation_id" = ldh."formulation_id" AND
      nano."formulation_id" = ldh."formulation_id";

-- Query 10b: Nanoformulations in biological application for double emulsion
SELECT *
FROM experiment AS ex,
      ldh_assay AS ldh,
      researcher AS r,
      nanoformulations AS n,
      pup_info AS pup,
      np_charc AS np,
      double_emulsion AS de

WHERE ex."experiment_id" = 'ex1' AND
      ldh."ex_id" = ex."experiment_id" AND
      r."researcher_id" = ldh."researcher_id" AND
      ldh."formulation_id" = n."formulation_id" AND
      ldh."specimen_id" = pup."specimen_id" AND
      np."formulation_id" = ldh."formulation_id" AND
      de."formulation_id" = ldh."formulation_id";

-- Query 11: To get all of Rick's double emulsion data with different sonication
-- times
SELECT *
FROM double_emulsion AS de,
     np_charc AS np,
     researcher AS r
WHERE de."time_1" IS NOT NULL AND
      np."np_activity" IS NOT NULL AND
      de."formulation_id" = np."formulation_id" AND
      np."researcher_id" = r."researcher_id";
