CREATE SCHEMA update;


SET default_tablespace = '';

SET default_with_oids = false;


CREATE TABLE update.form_a1_village_identification (
    geom public.geometry,
    accuracy numeric(38,10),
    altitude numeric(38,10),
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    village text,
    contact_given_name character varying(255),
    contact_family_name character varying(255),
    headperson_given_name character varying(255),
    headperson_family_name character varying(255),
    headperson_contact text,
    number_households integer,
    village_register character varying(255),
    village_recognized character varying(255),
    shrd_rsrcs_agriculture character varying(255),
    shrd_rsrcs_network character varying(255),
    shrd_rsrcs_borehole character varying(255),
    shrd_rsrcs_well character varying(255),
    shrd_rsrcs_hammermill character varying(255),
    dist_pri_school integer,
    dist_sec_school integer,
    shrd_rsrcs_church character varying(255),
    shrd_rsrcs_clinic character varying(255),
    dist_clinic integer,
    shrd_rsrcs_dam character varying(255),
    shrd_rsrcs_dip_tank character varying(255),
    shrd_rsrcs_gov_press character varying(255),
    shrd_rsrcs_electricity character varying(255),
    shrd_rsrcs_market character varying(255),
    shrd_rsrcs_nat_res character varying(255),
    mob_network_airtel character varying(255),
    mob_network_mtn character varying(255),
    mob_network_zamtel character varying(255),
    conflict character varying(255),
    conflict_description character varying(255),
    addtnal_settle_scheme character varying(255),
    addtnal_mvuvye_forest character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_a2_roads (
    geom public.geometry(MultiLineStringZM,4326),
    date timestamp without time zone,
    organization text,
    jurisdiction character varying,
    tec_name text,
    key character varying(80)
);


CREATE TABLE update.form_b_governance_development (
    development_actors text,
    village_actor_issues text,
    village text,
    key character varying(80),
    parent_key character varying(80)
);


CREATE TABLE update.form_b_governance_group_maps (
    photo text,
    map_notes text,
    map_author text,
    key character varying(80),
    parent_key character varying(80)
);


CREATE TABLE update.form_b_governance_village_register (
    photo text,
    register_notes text,
    village text,
    jurisdiction text,
    district text,
    key character varying(80),
    parent_key character varying(80)
);


CREATE TABLE update.form_b_village_governance (
    organization text,
    tec_name text,
    date date,
    jurisdiction text,
    village text,
    district text,
    ward text,
    area text,
    induna_given_name text,
    induna_family_name text,
    headman_given_name text,
    headman_family_name text,
    gender text,
    contact_number text,
    headperson_year_appointed date,
    village_register text,
    village_household_number text,
    year_village_established date,
    reason_establish text,
    village_moved text,
    village_divided text,
    village_moved_when date,
    village_reason_moved text,
    village_reason_divided text,
    community_conflict text,
    neighbour_conflict text,
    government_conflict text,
    investor_conflict text,
    village_recognized text,
    community_conflict_reason text,
    neighbour_conflict_reason text,
    government_conflict_reason text,
    investor_conflict_reason text,
    community_agric_expansion text,
    forest_governance text,
    commitee_or_groups text,
    resource_mapping_consent text,
    household_land_certification_consent text,
    land_use_planning_consent text,
    data_use_consent text,
    community_representative_consent text,
    resource_mapping_no_consent_reason text,
    household_land_certification_no_consent_reason text,
    land_use_planning_no_consent_reason text,
    data_use_no_consent_reason text,
    community_representative_no_consent_reason text,
    signature text,
    map_group_narrative text,
    village_participation text,
    headperson_supportive text,
    gender_supportive text,
    inclusion_support text,
    youth_suppportive text,
    comment text,
    meeting_image text,
    key character varying(80)
);


CREATE TABLE update.form_c_registration_persons (
    organization text,
    tec_name text,
    date date,
    jurisdiction text,
    village text,
    given_name text,
    family_name text,
    gender character varying,
    civil_status character varying,
    profession text,
    nationality text,
    birth_place text,
    dob_known text,
    birth_date date,
    birth_year date,
    age_range text,
    document text,
    document_type text,
    id_number bigint,
    id_place_issued text,
    id_date_issued date,
    id_date_validity date,
    photo text,
    id_photo_front text,
    id_photo_back text,
    contact_number integer,
    key character varying(80)
);


CREATE TABLE update.form_d1_point_of_interest (
    geom public.geometry,
    accuracy numeric(38,10),
    altitude numeric(38,10),
    organization text,
    tec_name text,
    jurisdiction text,
    date date,
    descriptor text,
    resource_name text,
    tenure text,
    resource_manager text,
    management_problems text,
    resource_notes text,
    image text,
    key text
);


CREATE TABLE update.form_d2_shared_resource_area_subtable (
    id_means character varying(255),
    area_descriptor character varying,
    res_name character varying(255),
    geom public.geometry(MultiPolygonZM,4326),
    ref_map_id character varying(255),
    res_code character varying(255),
    tenure_type character varying,
    management_institution character varying,
    management_problems character varying(255),
    management_notes character varying(255),
    uses character varying,
    principle_use character varying,
    use_rules character varying(255),
    narrative character varying(255),
    parent_id character varying(80),
    key character varying(80)
);


CREATE TABLE update.form_d2_shared_resources_area (
    organization character varying,
    tec_name character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    ref_map_id character varying(255),
    key character varying(80)
);



CREATE TABLE update.form_d3_jurisdiction_paper_maps (
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    boundaries character varying,
    jurisdiction_type character varying(255),
    register_yn character varying(255),
    institutions_name character varying,
    register_inst_name character varying(255),
    village text,
    area_name text,
    id_means character varying(255),
    whole_part character varying(255),
    map_ref character varying(255),
    number_women integer,
    number_men integer,
    narrative character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_d3_jurisdiction_path (
    geom public.geometry(MultiLineStringZM,4326),
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    boundaries character varying,
    jurisdiction_type character varying(255),
    register_yn character varying(255),
    institutions_name character varying,
    register_inst_name character varying(255),
    village text,
    area_name text,
    id_means character varying(255),
    whole_part character varying(255),
    map_ref character varying(255),
    number_women integer,
    number_men integer,
    narrative character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_d3_jurisdiction_shape (
    geom public.geometry(MultiPolygonZM,4326),
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    boundaries character varying,
    jurisdiction_type character varying(255),
    register_yn character varying(255),
    institutions_name character varying,
    register_inst_name character varying(255),
    village text,
    area_name text,
    id_means character varying(255),
    whole_part character varying(255),
    map_ref character varying(255),
    number_women integer,
    number_men integer,
    narrative character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_e1_demarcations (
    geom public.geometry,
    accuracy numeric(38,10),
    altitude numeric(38,10),
    key character varying(80),
    organization text,
    tec_name text,
    date date,
    jurisdiction text,
    state text,
    state_grp_state_note text,
    access text,
    limits text,
    polygon text,
    ref_map_id text,
    demarcation_mapped text,
    village text,
    parcel_id integer,
    parcel text,
    norm_type text,
    conflicts text,
    border text,
    overlap text,
    use_category text,
    use_area text,
    year_arrived integer,
    beacons text,
    water text,
    infrastructure_map text,
    infrastructure_type text,
    actual_landholder text,
    holder text,
    holder_given_name text,
    holder_family_name text,
    holder_resident_village_parcel text,
    representative text,
    representative_given_name text,
    representative_family_name text,
    rep_relationship text,
    number_of_witness integer,
    receipt_image text
);


CREATE TABLE update.form_e1_demarcations_infrastructure (
    geom public.geometry,
    accuracy numeric(38,10),
    altitude numeric(38,10),
    key character varying(80),
    parent_key character varying(80),
    infrastructure text,
    parcel text
);


CREATE TABLE update.form_e1_demarcations_line (
    geom public.geometry(MultiLineStringZM,4326),
    parcel character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_e1_demarcations_shp (
    geom public.geometry(MultiPolygonZM,4326),
    parcel character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_e1_demarcations_witness (
    key character varying(80),
    parent_key character varying(80),
    parcel character varying(255),
    witness_given_name text,
    witness_family_name text,
    witness_type text
);


CREATE TABLE update.form_f1_occ (
    organization text,
    tec_name text,
    date date,
    jurisdiction text,
    parcel_id integer,
    parcel_id_confirmation integer,
    parcel text,
    certified text,
    corrections text,
    delete_party text,
    additional_parties text,
    modify_boundary text,
    landholder_signature_needed text,
    conflict_reason text,
    nature_of_conflict text,
    other_corrections text,
    receipt_image text,
    key text,
    checked text,
    headperson_signed character varying,
    vlc_signed character varying
);


CREATE TABLE update.form_f1_occ_delete_party (
    parcel_parties text,
    delete_party text,
    party_key text,
    key text
);


CREATE TABLE update.form_f1_occ_party_signed (
    parcel text,
    party_signed_key text,
    parent_key text,
    key text
);


CREATE TABLE update.form_f1_occ_update_party_details (
    parcel character varying,
    party_key character varying,
    given_name character varying,
    family_name character varying,
    gender character varying,
    birthdate timestamp without time zone,
    birthyear integer,
    age_range character varying,
    document character varying,
    id_number character varying,
    id_place_issued character varying,
    id_date_issued timestamp without time zone,
    id_date_validity timestamp without time zone,
    photo character varying,
    id_image_front character varying,
    id_image_back character varying,
    contact character varying,
    relation_poi character varying,
    party_role character varying,
    parent_key character varying,
    key character varying
);



CREATE TABLE update.form_g1_disputes (
    organization character varying,
    tec_name character varying,
    date date,
    jurisdiction character varying,
    village character varying,
    dispute_relate_parcel character varying,
    dipsute_parcel_id integer,
    dispute_between_family character varying,
    dispute_between_claimaints character varying,
    dispute_between_villages character varying,
    parcel_boundary_dispute character varying,
    claimaint_unrecognized_dispute character varying,
    gender_dimension_dispute character varying,
    dispute_description character varying,
    resolved character varying,
    institutions character varying,
    project_role character varying,
    key character varying(80),
    dispute_id character varying
);



CREATE TABLE update.form_g2_dispute_resolution (
    organization text,
    tec_name text,
    date date,
    jurisdiction text,
    dispute_id text,
    institute_involved text,
    dispute_resolution text,
    resolved text,
    resolution text,
    involved_govt_local_auth_staff text,
    partner_org_involved text,
    involved_community_mediator text,
    involved_state_courts text,
    involved_traditional_courts text,
    captured_in_local_records text,
    image text,
    institute_intervention_required text,
    name_of_contact text,
    contact text,
    project_role text,
    key text
);


CREATE TABLE update.form_h2_admin_distribution (
    organization text,
    tec_name text,
    jurisdiction text,
    area text,
    village text,
    application_id text,
    date_completed_in_office date,
    date_completed_by_chief date,
    date_of_distribution date,
    received_by_landholders text,
    received_by_headperson text,
    received_by_area_commitee text,
    received_by_other text,
    landholders_signed text,
    headperson_signed text,
    area_commitee_signed text,
    other_signed text,
    key text
);


CREATE TABLE update.form_h2_admin_parcel_details (
    village text,
    date_of_distribution date,
    parcel_request text,
    parcel_id integer,
    parcel_id_check integer,
    request_info text,
    parcel text,
    parent_key text,
    key text
);


CREATE TABLE update.form_i1_meeting (
    geom public.geometry,
    accuracy numeric(38,10),
    altitude numeric(38,10),
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    village text,
    meeting_category character varying,
    meeting_type text,
    has_conflict character varying(255),
    confilct_details character varying(255),
    includes_gender character varying(255),
    gender_details character varying(255),
    female_attending integer,
    male_attending integer,
    female_youth_attending integer,
    male_youth_attending integer,
    attendance_sheet text,
    photo_meeting text,
    observation character varying(255),
    key character varying(80)
);


CREATE TABLE update.form_i1_meeting_village_attending (
    village text,
    woman_attending integer,
    men_attending integer,
    meta_key character varying,
    key character varying(80)
);


CREATE TABLE update.update_claims (
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    jurisdiction_code text,
    parcel_id integer,
    parcel text,
    receipt_image text,
    key character varying(80)
);


CREATE TABLE update.update_claims_party (
    parcel_parties character varying(255),
    key character varying(80),
    parent_key character varying(80),
    party character varying(255),
    registered character varying(255),
    given_name character varying(255),
    family_name character varying(255),
    gender character varying,
    civil_status character varying,
    profession text,
    nationality text,
    birthplace character varying(255),
    d_o_b_known character varying(255),
    birthdate timestamp without time zone,
    birthyear integer,
    age_range character varying,
    document character varying(255),
    id_document character varying(255),
    id_number character varying(255),
    id_place_issued character varying(255),
    id_date_issued timestamp without time zone,
    id_date_validity timestamp without time zone,
    photo text,
    id_image_front text,
    id_image_back text,
    contact character varying(255),
    party_role character varying,
    relationship_poi text,
    checked character varying DEFAULT 'no'::character varying NOT NULL,
    date_checked date DEFAULT CURRENT_DATE,
    receipt_image character varying
);

ALTER TABLE ONLY UPDATE.form_a1_village_identification
	ADD CONSTRAINT form_a1_village_identification_pkey PRIMARY KEY (key);

ALTER TABLE ONLY UPDATE.form_a2_roads
	ADD CONSTRAINT form_a2_roads_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_b_governance_development
	ADD CONSTRAINT form_b_governance_development_pkey PRIMARY KEY (key);

ALTER TABLE ONLY UPDATE.form_b_governance_group_maps
	ADD CONSTRAINT form_b_governance_group_maps_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_b_governance_village_register
	ADD CONSTRAINT form_b_governance_village_register_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_b_village_governance
	ADD CONSTRAINT form_b_village_governance_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_c_registration_persons
	ADD CONSTRAINT form_c_registration_persons_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_d1_point_of_interest
	ADD CONSTRAINT form_d1_point_of_interest_pkey PRIMARY KEY (key);
		
ALTER TABLE ONLY UPDATE.form_d2_shared_resource_area_subtable
	ADD CONSTRAINT form_d2_shared_resource_area_subtable_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_d2_shared_resources_area
	ADD CONSTRAINT form_d2_shared_resources_area_pkey PRIMARY KEY (key);

ALTER TABLE ONLY UPDATE.form_d3_jurisdiction_paper_maps
	ADD CONSTRAINT form_d3_jurisdiction_paper_maps_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_d3_jurisdiction_path
	ADD CONSTRAINT form_d3_jurisdiction_path_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_d3_jurisdiction_shape
	ADD CONSTRAINT form_d3_jurisdiction_shape_pkey PRIMARY KEY (key);

ALTER TABLE ONLY UPDATE.form_e1_demarcations
	ADD CONSTRAINT form_e1_demarcations_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_e1_demarcations_infrastructure
	ADD CONSTRAINT form_e1_demarcations_infrastructure_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_e1_demarcations_line
	ADD CONSTRAINT form_e1_demarcations_line_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_e1_demarcations_shp
	ADD CONSTRAINT form_e1_demarcations_shp_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_e1_demarcations_witness
	ADD CONSTRAINT form_e1_demarcations_witness_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_f1_occ
	ADD CONSTRAINT form_f1_occ_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_f1_occ_delete_party
	ADD CONSTRAINT form_f1_occ_delete_party_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_f1_occ_party_signed
	ADD CONSTRAINT form_f1_occ_party_signed_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_f1_occ_update_party_details
	ADD CONSTRAINT form_f1_occ_update_party_details_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_g1_disputes
	ADD CONSTRAINT form_g1_disputes_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_g2_dispute_resolution
	ADD CONSTRAINT form_g2_dispute_resolution_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_h2_admin_distribution
	ADD CONSTRAINT form_h2_admin_distribution_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_h2_admin_parcel_details
	ADD CONSTRAINT form_h2_admin_parcel_details_pkey PRIMARY KEY (key);
	
ALTER TABLE ONLY UPDATE.form_i1_meeting
	ADD CONSTRAINT form_i1_meeting_pkey PRIMARY KEY (key);

ALTER TABLE ONLY UPDATE.form_i1_meeting_village_attending
	ADD CONSTRAINT form_i1_meeting_village_attending_pkey PRIMARY KEY (key);

ALTER TABLE ONLY update.update_claims_party
    ADD CONSTRAINT unq_update_claims_party_key UNIQUE (key);


CREATE INDEX pfe1dl_idx ON update.form_e1_demarcations_line USING gist (geom);


CREATE INDEX pfe1ds_idx ON update.form_e1_demarcations_shp USING gist (geom);


CREATE INDEX pfe1dshp_idx ON update.form_e1_demarcations_shp USING gist (geom);


CREATE INDEX sidx_form_e1_demarcations_line_geom ON update.form_e1_demarcations_line USING gist (geom);


CREATE INDEX ujs_idx ON update.form_d3_jurisdiction_shape USING gist (geom);


CREATE INDEX ujsup_idx ON update.form_d3_jurisdiction_path USING gist (geom);


CREATE INDEX upda_form_a1_vill_id_idx ON update.form_a1_village_identification USING gist (geom);


CREATE INDEX usras_idx ON update.form_d2_shared_resource_area_subtable USING gist (geom);


CREATE INDEX uufa2r_idx ON update.form_a2_roads USING gist (geom);



