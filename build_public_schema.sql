SET default_tablespace = '';

SET default_with_oids = false;


CREATE TABLE public.certification (
    chiefdom character varying,
    village character varying,
    parcel character varying,
    parcel_id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    date_of_survey date,
    date_digitized date,
    area_hectares double precision,
    x_min integer,
    x_max integer,
    y_min integer,
    y_max integer,
    scale integer,
    produced date
);


CREATE TABLE public.form_a1_village_identification (
    geom public.geometry(Point,4326),
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_a2_roads (
    geom public.geometry(MultiLineStringZM,4326),
    date timestamp without time zone,
    organization text,
    jurisdiction character varying,
    tec_name text,
    key character varying(80) NOT NULL,
    length_m numeric(8,2)
);


CREATE TABLE public.form_b_governance_development (
    development_actors text,
    village_actor_issues text,
    village text,
    key character varying(80) NOT NULL,
    parent_key character varying(80)
);


CREATE TABLE public.form_b_governance_group_maps (
    photo text,
    map_notes text,
    map_author text,
    key character varying(80) NOT NULL,
    parent_key character varying(80)
);


CREATE TABLE public.form_b_governance_village_register (
    photo text,
    register_notes text,
    village text,
    jurisdiction text,
    district text,
    key character varying(80),
    parent_key character varying(80)
);


CREATE TABLE public.form_b_village_governance (
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
    key character varying(80) NOT NULL
);


--
-- TOC entry 519 (class 1259 OID 3949149)
-- Name: form_c_registration_persons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_c_registration_persons (
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_d1_point_of_interest (
    geom public.geometry(Point,4326),
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
    key text NOT NULL
);


CREATE TABLE public.form_d2_shared_resource_area_subtable (
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_d2_shared_resource_dig_line (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,4326),
    ref_map_id character varying(255),
    res_code character varying(255),
    classification character varying,
    sub_tab_key character varying
);


CREATE SEQUENCE public.form_d2_shared_resource_dig_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_d2_shared_resource_dig_line_id_seq OWNED BY public.form_d2_shared_resource_dig_line.id;


CREATE TABLE public.form_d2_shared_resource_digitization (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    ref_map_id character varying,
    res_code character varying,
    classification character varying,
    sub_tab_key character varying
);


CREATE TABLE public.form_d2_shared_resources_area (
    organization character varying,
    tec_name character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    ref_map_id character varying(255),
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_d3_jurisdiction_dig_line (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    map_ref_id character varying(255),
    jurisdiction_type character varying,
    sub_tab_key character varying
);


CREATE TABLE public.form_d3_jurisdiction_digitization (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    map_ref_id character varying(255),
    jurisdiction_type character varying,
    sub_tab_key character varying,
    area_hectares double precision
);


CREATE TABLE public.form_d3_jurisdiction_paper_maps (
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_d3_jurisdiction_path (
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_d3_jurisdiction_shape (
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_e1_demarcations (
    geom public.geometry(Point,4326),
    accuracy numeric(38,10),
    altitude numeric(38,10),
    key character varying(80) NOT NULL,
    organization character varying,
    tec_name character varying,
    date date,
    jurisdiction character varying,
    state character varying,
    state_grp_state_note character varying,
    access character varying,
    limits character varying,
    polygon character varying,
    ref_map_id character varying,
    demarcation_mapped character varying,
    village character varying,
    parcel_id integer,
    parcel character varying,
    norm_type character varying,
    conflicts character varying,
    border character varying,
    overlap character varying,
    use_category character varying,
    use_area character varying,
    year_arrived integer,
    beacons character varying,
    water character varying,
    infrastructure_map character varying,
    infrastructure_type character varying,
    actual_landholder character varying,
    holder_given_name character varying,
    holder_family_name character varying,
    holder_resident_village_parcel character varying,
    representative_given_name character varying,
    representative_family_name character varying,
    rep_relationship character varying,
    number_of_witness integer,
    receipt_image text
);


CREATE TABLE public.form_e1_demarcations_infrastructure (
    geom public.geometry(Point,4326),
    accuracy numeric(38,10),
    altitude numeric(38,10),
    key character varying(80),
    parent_key character varying(80),
    infrastructure text,
    parcel text
);


CREATE TABLE public.form_e1_demarcations_line (
    geom public.geometry(MultiLineStringZM,4326),
    parcel character varying(255),
    key character varying(80)
);


CREATE TABLE public.form_e1_demarcations_shp (
    geom public.geometry(MultiPolygonZM,4326),
    parcel character varying(255),
    key character varying(80)
);


CREATE TABLE public.form_e1_demarcations_witness (
    key character varying(80) NOT NULL,
    parent_key character varying(80),
    parcel character varying(255),
    witness_given_name text,
    witness_family_name text,
    witness_type text
);


CREATE TABLE public.form_e2_claims (
    organization text,
    tec_name text,
    date timestamp without time zone,
    jurisdiction text,
    jurisdiction_code text,
    parcel_id integer,
    parcel character varying,
    receipt_image text,
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_e2_claims_party (
    parcel_parties character varying(255),
    key character varying(80) NOT NULL,
    parent_key character varying(80),
    party character varying(255),
    registered character varying(255),
    given_name character varying(255),
    family_name character varying(255),
    gender character varying,
    civil_status character varying,
    profession character varying,
    nationality character varying,
    birthplace character varying(255),
    d_o_b_known character varying(255),
    birthdate timestamp without time zone,
    birthyear integer,
    age_range character varying,
    document character varying,
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
    relationship_poi character varying
);


CREATE TABLE public.form_f1_occ (
    organization text,
    tec_name text,
    date date,
    jurisdiction character varying,
    parcel_id integer,
    parcel_id_confirmation integer,
    parcel character varying,
    certified character varying,
    corrections character varying DEFAULT 'no'::character varying,
    delete_party character varying DEFAULT 'no'::character varying,
    additional_parties character varying DEFAULT 'no'::character varying,
    modify_boundary character varying DEFAULT 'no'::character varying,
    landholder_signature_needed character varying DEFAULT 'no'::character varying,
    conflict_reason character varying DEFAULT 'none'::character varying,
    nature_of_conflict character varying DEFAULT 'none'::character varying,
    other_corrections character varying DEFAULT 'none'::character varying,
    receipt_image character varying,
    key character varying NOT NULL,
    delete_party_adjusted date,
    corrections_adjusted date,
    party_added_adjusted date,
    modify_boundary_adjusted date,
    final_check_adjusted date,
    dispute_adjusted date,
    other_adjusted date,
    headperson_signed character varying,
    vlc_signed character varying
);


CREATE TABLE public.form_f1_occ_party_signed (
    parcel text,
    given_name text,
    family_name text,
    birth_year integer,
    party_signed_key text,
    parent_key text,
    key text NOT NULL
);


CREATE TABLE public.form_g1_disputes (
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
    resolved character varying DEFAULT 'no'::character varying,
    institutions character varying,
    project_role character varying,
    key character varying(80) NOT NULL,
    dispute_id character varying
);


CREATE TABLE public.form_g2_dispute_resolution (
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
    key text NOT NULL
);


CREATE TABLE public.form_h2_admin_distribution (
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
    key text NOT NULL
);


CREATE TABLE public.form_h2_admin_parcel_details (
    village text,
    date_of_distribution date,
    parcel_request text,
    parcel_id integer,
    parcel_id_check integer,
    request_info text,
    parcel text,
    parent_key text,
    key text NOT NULL
);


CREATE TABLE public.form_i1_meeting (
    geom public.geometry(Point,4326),
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
    key character varying(80) NOT NULL
);


CREATE TABLE public.form_i1_meeting_village_attending (
    village text,
    woman_attending integer,
    men_attending integer,
    meta_key character varying,
    key character varying(80) NOT NULL
);


CREATE TABLE public.hh_sheets (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    "left" double precision,
    top double precision,
    "right" double precision,
    bottom double precision,
    print integer,
    sheet character varying
);


CREATE TABLE public.occ_metadata (
    jurisdiction text,
    village text,
    demarcation_mapped text,
    demarcation_parcel_id integer,
    claims_parcel_id integer,
    occ_parcel_id integer,
    dispute_parcel_id integer,
    parcel text,
    conflicts text,
    border text,
    overlap text,
    modify_boundary text,
    landholder_signed text,
    conflict_reason text,
    nature_of_conflict text,
    other_corrections text,
    state text
);


CREATE TABLE public.occ_other_adjustments (
    occ_enumerator character varying,
    demarc_enumerator character varying,
    jurisdiction character varying,
    parcel_id integer NOT NULL,
    village text,
    corrections character varying,
    corrected character varying DEFAULT 'no'::character varying,
    date_corrected date
);


CREATE TABLE public.occ_party (
    village character varying,
    id_parcel integer,
    claim_key character varying,
    receipt_image text,
    parcel_parties character varying,
    given_name character varying,
    family_name character varying,
    gender character varying,
    civil_status character varying,
    profession character varying,
    nationality character varying,
    birthplace character varying,
    age character varying,
    party_role character varying,
    relationship_poi character varying,
    contact character varying,
    document character varying,
    id_document character varying,
    id_number character varying,
    id_place_issued character varying,
    id_date_issued timestamp without time zone,
    id_date_validity timestamp without time zone,
    photo text,
    id_image_front text,
    id_image_back text,
    party_key character varying,
    key character varying NOT NULL
);


CREATE TABLE public.parcels (
    id_parcel integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    date_of_survey date,
    digitiser character varying(80),
    date_digitized date,
    area_hectares double precision,
    norm_type character varying,
    conflict character varying,
    border character varying(255),
    overlap character varying,
    use_category character varying,
    use_area character varying,
    year_arrived character varying,
    beacons character varying,
    water character varying,
    infrastructure_map character varying,
    infrastructure_type character varying,
    "x-min" double precision,
    "x-max" double precision,
    "y-min" double precision,
    "y-max" double precision,
    redrawn character varying DEFAULT 'no'::character varying NOT NULL,
    date_redrawn date
);


CREATE TABLE public.party_parcel (
    parcel_id character varying,
    party_key character varying(80),
    party_relationship character varying,
    party_role character varying
);



CREATE TABLE public.ref_grid (
    sheet character varying NOT NULL,
    geom public.geometry(Polygon,4326),
    "x-min" numeric(8,5),
    "x-max" numeric(8,5),
    "y-min" numeric(8,5),
    "y-max" numeric(8,5),
    print smallint
);



ALTER TABLE ONLY public.form_d2_shared_resource_dig_line ALTER COLUMN id SET DEFAULT nextval('public.form_d2_shared_resource_dig_line_id_seq'::regclass);

ALTER TABLE ONLY public.certification
    ADD CONSTRAINT certification_pkey PRIMARY KEY (parcel_id);

ALTER TABLE ONLY public.form_a1_village_identification
    ADD CONSTRAINT form_a1_village_identification_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_a2_roads
    ADD CONSTRAINT form_a2_roads_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_b_governance_development
    ADD CONSTRAINT form_b_governance_development_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_b_governance_group_maps
    ADD CONSTRAINT form_b_governance_group_maps_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_b_village_governance
    ADD CONSTRAINT form_b_village_governance_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_c_registration_persons
    ADD CONSTRAINT form_c_registration_persons_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d1_point_of_interest
    ADD CONSTRAINT form_d1_point_of_interest_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d2_shared_resource_dig_line
    ADD CONSTRAINT form_d2_shared_resource_dig_line_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.form_d2_shared_resource_digitization
    ADD CONSTRAINT form_d2_shared_resource_digitization_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.form_d2_shared_resources_area
    ADD CONSTRAINT form_d2_shared_resources_area_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d2_shared_resource_area_subtable
    ADD CONSTRAINT form_d2_shared_resources_area_subtable_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d3_jurisdiction_dig_line
    ADD CONSTRAINT form_d3_jurisdiction_dig_line_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.form_d3_jurisdiction_digitization
    ADD CONSTRAINT form_d3_jurisdiction_digitization_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.form_d3_jurisdiction_paper_maps
    ADD CONSTRAINT form_d3_jurisdiction_paper_maps_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d3_jurisdiction_path
    ADD CONSTRAINT form_d3_jurisdiction_path_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_d3_jurisdiction_shape
    ADD CONSTRAINT form_d3_jurisdiction_shape_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_e1_demarcations
    ADD CONSTRAINT form_e1_demarcations_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_e1_demarcations_witness
    ADD CONSTRAINT form_e1_demarcations_witness_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_e2_claims_party
    ADD CONSTRAINT form_e2_claims_party_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_e2_claims
    ADD CONSTRAINT form_e2_claims_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_f1_occ_party_signed
    ADD CONSTRAINT form_f1_occ_party_signed_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_f1_occ
    ADD CONSTRAINT form_f1_occ_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_g2_dispute_resolution
    ADD CONSTRAINT form_g2_dispute_resolution_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_h2_admin_distribution
    ADD CONSTRAINT form_h2_admin_distributtion_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_h2_admin_parcel_details
    ADD CONSTRAINT form_h2_admin_parcel_details_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.form_i1_meeting
    ADD CONSTRAINT form_i1_meeting_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_i1_meeting_village_attending
    ADD CONSTRAINT form_i1_meeting_village_attending_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.form_g1_disputes
    ADD CONSTRAINT from_g1_disputes_pkey PRIMARY KEY (key);

ALTER TABLE ONLY public.hh_sheets
    ADD CONSTRAINT hh_sheets_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.occ_other_adjustments
    ADD CONSTRAINT key_p PRIMARY KEY (parcel_id);

ALTER TABLE ONLY public.occ_party
    ADD CONSTRAINT occ_party_pk PRIMARY KEY (key);

ALTER TABLE ONLY public.parcels
    ADD CONSTRAINT parcels_pkey PRIMARY KEY (id_parcel);

ALTER TABLE ONLY public.ref_grid
    ADD CONSTRAINT ref_grid_pkey PRIMARY KEY (sheet);

CREATE INDEX certification_idx ON public.certification USING gist (geom);

CREATE INDEX fedir_form_e1_demarcations_infrastructure_geom ON public.form_e1_demarcations_infrastructure USING gist (geom);

CREATE INDEX form_a1_vill_id_idx ON public.form_a1_village_identification USING gist (geom);

CREATE INDEX pfa2r_idx ON public.form_a2_roads USING gist (geom);

CREATE INDEX pfdpoi_idx ON public.form_d1_point_of_interest USING gist (geom);

CREATE INDEX pfe1dl_idx ON public.form_e1_demarcations_line USING gist (geom);

CREATE INDEX pfe1dshp_idx ON public.form_e1_demarcations_shp USING gist (geom);

CREATE INDEX psradl_idx ON public.form_d2_shared_resource_dig_line USING gist (geom);

CREATE INDEX psras_idx ON public.form_d2_shared_resource_area_subtable USING gist (geom);

CREATE INDEX psrd_idx ON public.form_d3_jurisdiction_digitization USING gist (geom);

CREATE INDEX psrdl_idx ON public.form_d3_jurisdiction_dig_line USING gist (geom);

CREATE INDEX sidx_form_d2_shared_resource_digitization_geom ON public.form_d2_shared_resource_digitization USING gist (geom);

CREATE INDEX sidx_form_e1_demarcations_geom ON public.form_e1_demarcations USING gist (geom);

CREATE INDEX sidx_form_i1_meeting_geom ON public.form_i1_meeting USING gist (geom);

CREATE INDEX sidx_hh_sheets_geom ON public.hh_sheets USING gist (geom);

CREATE INDEX sidx_parcels_geom ON public.parcels USING gist (geom);

CREATE INDEX sidx_ref_grid_geom ON public.ref_grid USING gist (geom);

CREATE INDEX ujs_idx ON public.form_d3_jurisdiction_shape USING gist (geom);

CREATE INDEX ujspp_idx ON public.form_d3_jurisdiction_path USING gist (geom);
