CREATE TABLE "double_emulsion" (
  "formulation_id" Varchar,
  "methodology" Varchar,
  "researcher_id" Varchar,
  "sample_id" Varchar,
  "notes" Varchar,
  "date" Date,
  "polymer" Varchar,
  "polymer_mass" Integer,
  "np_loading" Varchar,
  "loading_mass" Integer,
  "time_1" Integer,
  "amplitude_1" Integer,
  "time_2" Integer,
  "amplitude_2" Integer,
  "as_volume1" Numeric(2,1),
  "aqueous_solution1" Varchar,
  "as_percent1" Integer,
  "as_volume2" Integer,
  "aqueous_solution2" Varchar,
  "as_percent2" Integer,
  "sink_volume" Integer,
  "sink" Varchar,
  "sink_percent" Varchar
);

CREATE TABLE "collaborator" (
  "collab_id" Varchar,
  "first_name" Varchar,
  "last_name" Varchar,
  "institution" Varchar,
  "education_level" Varchar,
  PRIMARY KEY ("collab_id")
);

CREATE TABLE "researcher" (
  "researcher_id" Varchar,
  "collaborator_id" Varchar,
  "first_name" Varchar,
  "last_name" Varchar,
  "education_level" Varchar,
  PRIMARY KEY ("researcher_id")
);

CREATE TABLE "ldh_assay" (
  "bcharc_id" VarChar,
  "ex_id" VarChar,
  "specimen_id" VarChar,
  "formulation_id" VarChar,
  "researcher_id" VarChar,
  "date" Date,
  "treatment" VarChar,
  "1h" VarChar,
  "2h" VarChar,
  "4h" VarChar,
  "8h" VarChar,
  "1D" VarChar,
  PRIMARY KEY ("bcharc_id")
);

CREATE TABLE "pup_info" (
  "specimen_id" VarChar,
  "researcher_id" VarChar,
  "mother_id" Varchar,
  "pup_idnum" Varchar,
  "dob" Date,
  "dos" Date,
  "age" VarChar,
  "gender" VarChar,
  "weight" Integer,
  PRIMARY KEY ("specimen_id")
);

CREATE TABLE "single_emulsion" (
  "formulation_id" Varchar,
  "methodology" Varchar,
  "researcher_id" Varchar,
  "sample_id" Varchar,
  "notes" Varchar,
  "date" Date,
  "polymer" Varchar,
  "polymer_mass" Numeric(6,3),
  "np_loading" Varchar,
  "loading_mass" Numeric(5,3),
  "time" Integer,
  "amplitude" Integer,
  "as_volume" Integer,
  "aqueous_solution" Varchar,
  "as_percent" Integer,
  "sink_volume" Integer,
  "sink" Varchar,
  "sink_percent" VarChar,
  "polymer_ratio" Varchar
);

CREATE TABLE "reverse_formulation" (
  "formulation_id" Varchar,
  "methodology" Varchar,
  "researcher_id" Varchar,
  "sample_id" Varchar,
  "notes" Varchar,
  "date" Date,
  "polymer" Varchar,
  "surfactant" Varchar
);

CREATE TABLE "np_charc" (
  "charc_id" Varchar,
  "formulation_id" Varchar,
  "researcher_id" Varchar,
  "notes" Varchar,
  "size_measurement" Varchar,
  "size" Numeric(6,2),
  "size_sem" Numeric(5,2),
  "pdi" Numeric(6,2),
  "pdi_sem" Numeric(6,2),
  "zp" Numeric(5,2),
  "zp_sem" Numeric(5,2),
  "np_activity" VarChar,
  "supernatant_activity" VarChar,
  "polymer_retention" VarChar,
  PRIMARY KEY ("charc_id")
);

CREATE TABLE "nanoprecipitation" (
  "formulation_id" Varchar,
  "methodology" Varchar,
  "researcher_id" Varchar,
  "sample_id" Varchar,
  "notes" Varchar,
  "date" Date,
  "polymer" Varchar,
  "polymer_mass" Integer,
  "organic" Varchar,
  "np_loading" Varchar,
  "loading_mass" VarChar,
  "sink_volume" Integer,
  "sink" Varchar,
  "sink_percent" VarChar
);

CREATE TABLE "experiment" (
  "experiment_id" VarChar,
  "primary_researcher_id" VarChar,
  "experiment_name" VarChar,
  "collaborator_id" VarChar,
  PRIMARY KEY ("experiment_id")
);

CREATE TABLE "nanoformulations" (
  "formulation_id" Varchar,
  "methodology" Varchar,
  "researcher_id" Varchar,
  "sample_id" Varchar,
  "notes" Varchar,
  "date" Date
);
