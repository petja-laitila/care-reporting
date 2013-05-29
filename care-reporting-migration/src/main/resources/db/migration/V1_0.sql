CREATE TABLE report.flw (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE report.flw_group (
   id SERIAL PRIMARY KEY,
   name VARCHAR(255)
);

CREATE TABLE report.flw_group_map (
   flw_id INTEGER REFERENCES report.flw(id),
   group_id INTEGER REFERENCES report.flw_group(id)
);

CREATE TABLE report.mother_case (
	id SERIAL PRIMARY KEY
	,case_id	VARCHAR(36) UNIQUE
	,case_name	VARCHAR(255)
	,case_type	VARCHAR(255)
	,owner_id	INTEGER REFERENCES report.flw_group(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,date_next_reg	DATE
	,family_number	INTEGER
	,hh_number	INTEGER
	,husband_name	VARCHAR(255)
	,last_visit_type	INTEGER
	,mother_alive	BOOLEAN
	,mother_dob	DATE
	,mother_name	VARCHAR(255)
	,dob	DATE
	,full_name	VARCHAR(255)
	,age_est	SMALLINT
	,close	 BOOLEAN
	,case_closed	BOOLEAN
	,closed_on	DATE
	,add	DATE
	,age	SMALLINT
	,birth_place	VARCHAR(255)
	,complications	BOOLEAN
	,date_next_bp	DATE
	,date_next_cf	DATE
	,date_next_eb	DATE
	,date_next_pnc	DATE
	,eats_meat	BOOLEAN
	,edd	DATE
	,enrolled_in_kilkari	BOOLEAN
	,family_planning_type	VARCHAR(255)
	,how_many_children	SMALLINT
	,interest_in_kilkari	BOOLEAN
	,last_preg_tt	BOOLEAN
	,lmp	DATE
	,mobile_number	VARCHAR(20)
	,num_boys	SMALLINT
	,children	INTEGER
	,nextvisittype	VARCHAR(20)
	,num_children	SMALLINT
	,date_cf_1	DATE
	,date_cf_2	DATE
	,date_cf_3	DATE
	,date_cf_4	DATE
	,date_cf_5	DATE
	,date_cf_6	DATE
	,cf_visit_num	SMALLINT
	,date_eb_1	DATE
	,date_eb_2	DATE
	,date_eb_3	DATE
	,date_eb_4	DATE
	,date_eb_5	DATE
	,date_eb_6	DATE
	,eb_visit_num	INTEGER
	,all_pnc_on_time	BOOLEAN
	,date_pnc_1	DATE
	,date_pnc_2	DATE
	,date_pnc_3	DATE
	,first_pnc_time	VARCHAR(255)
	,pnc_1_days_late	SMALLINT
	,pnc_2_days_late	SMALLINT
	,pnc_3_days_late	SMALLINT
	,date_death	DATE
	,pnc_visit_num	SMALLINT
	,tt1_date	DATE
	,tt2_date	DATE
	,tt_booster_date	DATE
	,bp_visit_num	SMALLINT
	,sba	BOOLEAN
	,sba_phone	BOOLEAN
	,accompany	BOOLEAN
	,anc_1_date	DATE
	,anc_2_date	DATE
	,anc_3_date	DATE
	,anc_4_date	DATE
	,clean_cloth	BOOLEAN
	,couple_interested	VARCHAR(15)
	,date_bp_1	DATE
	,date_bp_2	DATE
	,date_bp_3	DATE
	,date_last_visit	DATE
	,delivery_type	VARCHAR(255)
	,ifa_tablets	SMALLINT
	,ifa_tablets_100	DATE
	,materials	BOOLEAN
	,maternal_emergency	BOOLEAN
	,maternal_emergency_number	BOOLEAN
	,phone_vehicle	BOOLEAN
	,saving_money	BOOLEAN
	,tt_1_date	DATE
	,tt_2_date	DATE
	,vehicle	BOOLEAN
	,update	BOOLEAN
	,preg_status	VARCHAR(255)
	,birth_status	VARCHAR(255)
	,migrate_out_date	DATE
	,migrated_status	VARCHAR(255)
	,status	VARCHAR(255)
	,cast_num_children	SMALLINT
	,received_tt1	BOOLEAN
	,received_tt2	BOOLEAN
	,up_to_date	VARCHAR(15)
);

CREATE TABLE report.child_case (
	id SERIAL PRIMARY KEY
	,case_id	VARCHAR(36)
	,case_name	VARCHAR(255)
	,date_modified	TIMESTAMP WITH TIME ZONE
    ,mother_id	INTEGER REFERENCES report.mother_case(id)
	,abnormalities	BOOLEAN
	,add_vaccinations	BOOLEAN
	,baby_bcg	BOOLEAN
	,baby_dpt1	BOOLEAN
	,baby_dpt2	BOOLEAN
	,baby_dpt3	BOOLEAN
	,baby_hep_b_0	BOOLEAN
	,baby_hep_b_1	BOOLEAN
	,baby_hep_b_2	BOOLEAN
	,baby_hep_b_3	BOOLEAN
	,baby_measles	BOOLEAN
	,baby_opv0	BOOLEAN
	,baby_opv1	BOOLEAN
	,baby_opv2	BOOLEAN
	,baby_opv3	BOOLEAN
	,baby_vita1	BOOLEAN
	,case_type	VARCHAR(255)
	,owner_id	INTEGER REFERENCES report.flw_group(id)
	,bcg_date	DATE
	,birth_status	VARCHAR(255)
	,dob	DATE
	,dpt_1_date	DATE
	,dpt_2_date	DATE
	,dpt_3_date	DATE
	,gender	VARCHAR(15)
	,hep_b_0_date	DATE
	,hep_b_1_date	DATE
	,hep_b_2_date	DATE
	,hep_b_3_date	DATE
	,measles_date	DATE
	,opv_0_date	DATE
	,opv_1_date	DATE
	,opv_2_date	DATE
	,opv_3_date	DATE
	,vit_a_1_date	DATE
	,child_have_a_name	BOOLEAN
	,child_name	VARCHAR(255)
	,weight	DECIMAL
	,amount_good	BOOLEAN
	,cid	VARCHAR(36)
	,dal	BOOLEAN
	,eaten_cereal	BOOLEAN
	,egg	BOOLEAN
	,fish	BOOLEAN
	,index	INTEGER
	,meat	BOOLEAN
	,milk_curd	BOOLEAN
	,more_feeding_less_six	BOOLEAN
	,name_update	BOOLEAN
	,new_name	VARCHAR(255)
	,number_good	BOOLEAN
	,oil_ghee	BOOLEAN
	,recent_fever	BOOLEAN
	,treated_less_six	BOOLEAN
	,at_night	BOOLEAN
	,breastfeeding	BOOLEAN
	,counsel_adequate_bf	BOOLEAN
	,counsel_only_milk	BOOLEAN
	,counsel_stop_bottle	BOOLEAN
	,eating	BOOLEAN
	,emptying	BOOLEAN
	,feeding_bottle	BOOLEAN
	,not_breasfeeding	VARCHAR(255)
	,on_demand	BOOLEAN
	,tea_other	BOOLEAN
	,water_or_milk	BOOLEAN
	,able_expressed_milk	BOOLEAN
	,adequate_support	BOOLEAN
	,applied_to_stump	BOOLEAN
	,baby_active	BOOLEAN
	,breastfeeding_well	BOOLEAN
	,child_alive	BOOLEAN
	,child_died_village	BOOLEAN
	,child_place_death	VARCHAR(255)
	,child_site_death	VARCHAR(255)
	,chld_date_death	DATE
	,cord_fallen	BOOLEAN
	,correct_position	BOOLEAN
	,counsel_cord_care	BOOLEAN
	,counsel_exclusive_bf	BOOLEAN
	,counsel_express_milk	BOOLEAN
	,counsel_skin	BOOLEAN
	,cousel_bf_correct	BOOLEAN
	,demonstrate_expressed	BOOLEAN
	,demonstrate_skin	BOOLEAN
	,easy_awake	BOOLEAN
	,feed_vigour	BOOLEAN
	,good_latch	BOOLEAN
	,improvements_bf	BOOLEAN
	,observed_bf	BOOLEAN
	,other_milk_to_child	BOOLEAN
	,second_observation	BOOLEAN
	,skin_to_skin	BOOLEAN
	,warm_to_touch	BOOLEAN
	,what_applied	VARCHAR(255)
	,wrapped	BOOLEAN
	,dpt_booster_date	DATE
	,opv_booster_date	DATE
	,date_death	DATE
	,died	BOOLEAN
	,died_village	BOOLEAN
	,dupe_reg	BOOLEAN
	,finished_continuum	BOOLEAN
	,site_death	VARCHAR(255)
	,refer_child	BOOLEAN
);

CREATE TABLE report.new_form (
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,age_calc	SMALLINT
	,case_name	VARCHAR(255)
	,case_type	VARCHAR(255)
	,owner_id	VARCHAR(36)
	,date_last_visit	DATE
	,date_next_reg	DATE
	,family_number	INTEGER
	,hh_number	INTEGER
	,husband_name	VARCHAR(255)
	,last_visit_type	VARCHAR(20)
	,mother_alive	BOOLEAN
	,mother_dob	DATE
	,mother_name	VARCHAR(255)
	,caste	VARCHAR(255)
	,dob	DATE
	,dob_known	BOOLEAN
	,full_name	VARCHAR(255)
	,manual_group	INTEGER REFERENCES report.flw_group(id)
);

CREATE TABLE report.registration_mother_form (
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,ppiud	BOOLEAN
	,pptl	BOOLEAN
	,abd_pain	BOOLEAN
	,age_calc	SMALLINT
	,age_calc_adj	SMALLINT
	,age_est	SMALLINT
	,age_est_trigger	VARCHAR(10)
	,close	VARCHAR(10)
	,add	DATE
	,age	SMALLINT
	,birth_place	VARCHAR(255)
	,complications	BOOLEAN
	,date_last_visit	DATE
	,date_next_bp	DATE
	,date_next_cf	DATE
	,date_next_eb	DATE
	,date_next_pnc	DATE
	,eats_meat	BOOLEAN
	,edd	DATE
	,enrolled_in_kilkari	BOOLEAN
	,family_planning_type	VARCHAR(255)
	,how_many_children	SMALLINT
	,interest_in_kilkari	BOOLEAN
	,last_preg_tt	BOOLEAN
	,last_visit_type	VARCHAR(20)
	,lmp	DATE
	,mobile_number	VARCHAR(20)
	,mother_dob	 DATE
	,num_boys	SMALLINT
	,status	VARCHAR(255)
	,child_dob	DATE
	,children	INTEGER
	,client_no_register	VARCHAR(10)
	,client_not_pregnant	VARCHAR(10)
	,clinical_exam	BOOLEAN
	,condoms	BOOLEAN
	,continue_preg	BOOLEAN
	,delivery_nature	VARCHAR(255)
	,display_name	VARCHAR(10)
	,dob_est	VARCHAR(255)
	,edd_calc	DATE
	,edd_known	BOOLEAN
	,education	VARCHAR(255)
	,fever	BOOLEAN
	,first_pregnancy	BOOLEAN
	,gest_age	SMALLINT
	,good_to_register	BOOLEAN
	,in_district	BOOLEAN
	,injectible	BOOLEAN
	,is_pregnant	BOOLEAN
	,iud_used	BOOLEAN
	,jsy_beneficiary	BOOLEAN
	,jsy_money	BOOLEAN
	,last_preg	INTEGER
	,last_preg_c_section	BOOLEAN
	,last_preg_full_term	BOOLEAN
	,lmp_calc	DATE
	,lmp_known	BOOLEAN
	,missed_period	BOOLEAN
	,mobile_number_whose	VARCHAR(255)
	,nextvisit	VARCHAR(10)
	,nextvisit_bp	VARCHAR(10)
	,nextvisittype	VARCHAR(20)
	,num_children	SMALLINT
	,num_girls	SMALLINT
	,ocp_used	BOOLEAN
	,other_conditions	VARCHAR(255)
	,other_district	VARCHAR(255)
	,other_village	VARCHAR(255)
	,pain_urine	BOOLEAN
	,post_postpartum_fp	BOOLEAN
	,preg_desired	BOOLEAN
	,recently_delivered	BOOLEAN
	,referral_prompt	VARCHAR(255)
	,resident	VARCHAR(255)
	,success	VARCHAR(10)
	,urine_test	BOOLEAN
	,used_fp	BOOLEAN
	,vaginal_discharge	BOOLEAN
	,vegetarian	BOOLEAN
	,where_born	VARCHAR(255)
	,which_hospital	VARCHAR(255)
	,which_village	VARCHAR(255)
);

CREATE TABLE report.registration_child_form (
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,mother_id	INTEGER REFERENCES report.mother_case(id)
	,abnormalities	BOOLEAN
	,add_vaccinations	BOOLEAN
	,baby_bcg	BOOLEAN
	,baby_dpt1	BOOLEAN
	,baby_dpt2	BOOLEAN
	,baby_dpt3	BOOLEAN
	,baby_hep_b_0	BOOLEAN
	,baby_hep_b_1	BOOLEAN
	,baby_hep_b_2	BOOLEAN
	,baby_hep_b_3	BOOLEAN
	,baby_measles	BOOLEAN
	,baby_opv0	BOOLEAN
	,baby_opv1	BOOLEAN
	,baby_opv2	BOOLEAN
	,baby_opv3	BOOLEAN
	,baby_vita1	BOOLEAN
	,case_name	VARCHAR(255)
	,case_type	VARCHAR(255)
	,owner_id	INTEGER REFERENCES report.flw_group(id)
	,bcg_date	DATE
	,birth_status	VARCHAR(255)
	,dob	DATE
	,dpt_1_date	DATE
	,dpt_2_date	DATE
	,dpt_3_date	DATE
	,gender	VARCHAR(15)
	,hep_b_0_date	DATE
	,hep_b_1_date	DATE
	,hep_b_2_date	DATE
	,hep_b_3_date	DATE
	,measles_date	DATE
	,opv_0_date	DATE
	,opv_1_date	DATE
	,opv_2_date	DATE
	,opv_3_date	DATE
	,vit_a_1_date	DATE
	,child_have_a_name	BOOLEAN
	,child_name	VARCHAR(255)
	,weight	DECIMAL
);


CREATE TABLE report.bp_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,anc_latest_date	DATE
	,anc_latest_num	INTEGER
	,anc1_abdominal_exam	VARCHAR(255)
	,anc1_abnormalities	BOOLEAN
	,anc1_blood_pressure	VARCHAR(255)
	,anc1_date	DATE
	,anc1_facility	VARCHAR(255)
	,anc1_details	BOOLEAN
	,anc2_abdominal_exam	VARCHAR(255)
	,anc2_abnormalities	BOOLEAN
	,anc2_blood_pressure	VARCHAR(255)
	,anc2_date	DATE
	,anc2_facility	VARCHAR(255)
	,anc2_details	BOOLEAN
	,anc3_abdominal_exam	VARCHAR(255)
	,anc3_abnormalities	BOOLEAN
	,anc3_blood_pressure	VARCHAR(255)
	,anc3_date	DATE
	,anc3_facility	VARCHAR(255)
	,anc3_details	BOOLEAN
	,anc4_abdominal_exam	VARCHAR(255)
	,anc4_abnormalities	BOOLEAN
	,anc4_blood_pressure	VARCHAR(255)
	,anc4_date	DATE
	,anc4_facility	VARCHAR(255)
	,anc4_details	BOOLEAN
	,counsel_ifa	BOOLEAN
	,counsel_tt	BOOLEAN
	,eating_extra	BOOLEAN
	,ifa_tablets_issued	SMALLINT
	,reason_no_ifa	VARCHAR(255)
	,received_tt1	BOOLEAN
	,received_tt2	BOOLEAN
	,resting	BOOLEAN
	,tt1_date	DATE
	,tt2_date	DATE
	,tt_booster	BOOLEAN
	,tt_booster_date	DATE
	,using_ifa	BOOLEAN
	,sba	BOOLEAN
	,sba_phone	BOOLEAN
	,accompany	BOOLEAN
	,care_of_home	BOOLEAN
	,clean_cloth	BOOLEAN
	,cord_care	BOOLEAN
	,counsel_home_delivery	BOOLEAN
	,counsel_institutional	BOOLEAN
	,counsel_preparation	BOOLEAN
	,danger_institution	BOOLEAN
	,danger_number	BOOLEAN
	,has_danger_signs	BOOLEAN
	,immediate_breastfeeding	BOOLEAN
	,inform_danger_signs	BOOLEAN
	,materials	BOOLEAN
	,maternal_danger_signs	BOOLEAN
	,now_institutional	BOOLEAN
	,phone_vehicle	BOOLEAN
	,play_birth_preparedness_vid	BOOLEAN
	,play_cord_care_vid	BOOLEAN
	,saving_money	BOOLEAN
	,skin_to_skin	BOOLEAN
	,vehicle	BOOLEAN
	,wrapping	BOOLEAN
	,bp_visit_num	SMALLINT
	,anc_1_date	DATE
	,anc_2_date	DATE
	,anc_3_date	DATE
	,anc_4_date	DATE
	,couple_interested	VARCHAR(255)
	,date_bp_1	DATE
	,date_bp_2	DATE
	,date_bp_3	DATE
	,date_last_visit	DATE
	,date_next_bp	DATE
	,delivery_type	VARCHAR(255)
	,ifa_tablets	SMALLINT
	,ifa_tablets_100	DATE
	,last_visit_type	VARCHAR(20)
	,maternal_emergency	BOOLEAN
	,maternal_emergency_number	BOOLEAN
	,tt_1_date	DATE
	,tt_2_date	DATE
	,conceive	BOOLEAN
	,del_fup	INTEGER
	,avail_immediate	BOOLEAN
	,counsel_accessible	BOOLEAN
	,counsel_benefits	BOOLEAN
	,counsel_disqualification	BOOLEAN
	,counsel_institution	BOOLEAN
	,counsel_methods	BOOLEAN
	,counsel_nearest	BOOLEAN
	,counsel_options	BOOLEAN
	,counsel_stay	BOOLEAN
	,immediate_appropriate	BOOLEAN
	,institution_immediate	BOOLEAN
	,postpone_conception	BOOLEAN
	,risk_of_preg	BOOLEAN
	,spacing_methods	BOOLEAN
	,stop_children	VARCHAR(15)
	,ifa_tablets_total	SMALLINT
	,nextvisittype	VARCHAR(20)
	,play_family_planning_vid	BOOLEAN
	,postponing	VARCHAR(15)
);


CREATE TABLE report.pnc_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,abdominal_pain	BOOLEAN
	,addval	DATE
	,adopt_immediately	BOOLEAN
	,all_pnc_on_time	BOOLEAN
	,bleeding	BOOLEAN
	,children	INTEGER
	,complications	BOOLEAN
	,congested	BOOLEAN
	,counsel_breast	BOOLEAN
	,counsel_follow_up_ppiud	BOOLEAN
	,counsel_follow_up_pptl	BOOLEAN
	,counsel_increase_food_bf	BOOLEAN
	,counsel_materal_comp	BOOLEAN
	,counsel_methods	BOOLEAN
	,counsel_neonatal_comp	BOOLEAN
	,counsel_ppfp	BOOLEAN
	,counsel_time_iud	BOOLEAN
	,date_death	DATE
	,date_iud_adopted	DATE
	,date_last_visit	DATE
	,date_next_eb	DATE
	,date_next_pnc	DATE
	,date_pnc_1	DATE
	,date_pnc_2	DATE
	,date_pnc_3	DATE
	,date_tl_adopted	DATE
	,death_village	BOOLEAN
	,discharge	BOOLEAN
	,distension	BOOLEAN
	,eating_well	BOOLEAN
	,family_planning_type	VARCHAR(255)
	,fever	BOOLEAN
	,first_pnc_time	VARCHAR(255)
	,interval_ppfp_interest	BOOLEAN
	,iud	BOOLEAN
	,iud_adopted	BOOLEAN
	,iud_counsel_duration	BOOLEAN
	,iud_counsel_follow_up	BOOLEAN
	,iud_counsel_hospital	BOOLEAN
	,iud_counsel_placement	BOOLEAN
	,iud_counsel_screening	BOOLEAN
	,iud_counsel_side_effects	BOOLEAN
	,last_visit_type	VARCHAR(20)
	,mother_alive	BOOLEAN
	,mother_child_alive	BOOLEAN
	,nextvisittype	VARCHAR(20)
	,num_children	SMALLINT
	,other_issues	BOOLEAN
	,pain_urination	BOOLEAN
	,painful_nipples	BOOLEAN
	,place_death	VARCHAR(255)
	,pnc_1_days_late	INTEGER
	,pnc_2_days_late	INTEGER
	,pnc_3_days_late	INTEGER
	,pnc_visit_num	SMALLINT
	,ppfp_interest	BOOLEAN
	,ppiud_abdominal_pain	BOOLEAN
	,ppiud_bleeding	BOOLEAN
	,ppiud_discharge	BOOLEAN
	,ppiud_fever	BOOLEAN
	,ppiud_problems	BOOLEAN
	,pptl_abdominal_pain	BOOLEAN
	,pptl_excessive_bleeding	BOOLEAN
	,pptl_pain_surgery	BOOLEAN
	,pptl_problems	BOOLEAN
	,problems_breast	BOOLEAN
	,safe	BOOLEAN
	,site_death	VARCHAR(255)
	,tl	BOOLEAN
	,tl_adopted	BOOLEAN
	,tl_consel_incentives	BOOLEAN
	,tl_counsel_follow_up	BOOLEAN
	,tl_counsel_hospital	BOOLEAN
	,tl_counsel_irreversible	BOOLEAN
	,tl_counsel_screening	BOOLEAN
	,tl_counsel_side_effects	BOOLEAN
	,tl_counsel_timing	BOOLEAN
	,why_no_ppffp	VARCHAR(255)
);

CREATE TABLE report.pnc_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,abdominal_pain	BOOLEAN
	,able_expressed_milk	BOOLEAN
	,adequate_support	BOOLEAN
	,applied_to_stump	BOOLEAN
	,baby_active	BOOLEAN
	,breastfeeding_well	BOOLEAN
	,child_alive	BOOLEAN
	,child_died_village	BOOLEAN
	,child_place_death	VARCHAR(255)
	,child_site_death	VARCHAR(255)
	,chld_date_death	DATE
	,cid	VARCHAR(36)
	,close	VARCHAR(255)
	,cord_fallen	BOOLEAN
	,correct_position	BOOLEAN
	,counsel_cord_care	BOOLEAN
	,counsel_exclusive_bf	BOOLEAN
	,counsel_express_milk	BOOLEAN
	,counsel_skin	BOOLEAN
	,cousel_bf_correct	BOOLEAN
	,demonstrate_expressed	BOOLEAN
	,demonstrate_skin	BOOLEAN
	,easy_awake	BOOLEAN
	,feed_vigour	BOOLEAN
	,good_latch	BOOLEAN
	,improvements_bf	BOOLEAN
	,index	SMALLINT
	,observed_bf	BOOLEAN
	,other_milk_to_child	BOOLEAN
	,second_observation	BOOLEAN
	,skin_to_skin	BOOLEAN
	,warm_to_touch	BOOLEAN
	,what_applied	VARCHAR(255)
	,wrapped	BOOLEAN
);

CREATE TABLE report.ebf_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,addval	DATE
	,adopt_immediately	BOOLEAN
	,ask_ppiud	BOOLEAN
	,aware_of_failure	BOOLEAN
	,bleeding	BOOLEAN
	,children	VARCHAR(255)
	,complications	BOOLEAN
	,condoms	BOOLEAN
	,counsel_follow_up_ppiud	BOOLEAN
	,counsel_follow_up_pptl	BOOLEAN
	,counsel_menstrual_cycle	BOOLEAN
	,counsel_methods	BOOLEAN
	,counsel_ppfp	BOOLEAN
	,counsel_time_iud	BOOLEAN
	,date_eb_1	DATE
	,date_eb_2	DATE
	,date_eb_3	DATE
	,date_eb_4	DATE
	,date_eb_5	DATE
	,date_eb_6	DATE
	,date_iud_adopted	DATE
	,date_last_inj	DATE
	,date_last_visit	DATE
	,date_next_cf	DATE
	,date_next_eb	DATE
	,discharge	BOOLEAN
	,distension	BOOLEAN
	,eb_visit_num	SMALLINT
	,family_planning_type	VARCHAR(255)
	,fever	BOOLEAN
	,have_condoms	BOOLEAN
	,headaches	BOOLEAN
	,high_bp	BOOLEAN
	,inj_menstrual_irregularity	BOOLEAN
	,injectable	BOOLEAN
	,intend_to_continue	BOOLEAN
	,interval_ppfp_interest	BOOLEAN
	,iud	BOOLEAN
	,iud_adopted	BOOLEAN
	,iud_counsel_duration	BOOLEAN
	,iud_counsel_follow_up	BOOLEAN
	,iud_counsel_hospital	BOOLEAN
	,iud_counsel_placement	BOOLEAN
	,iud_counsel_screening	BOOLEAN
	,iud_counsel_side_effects	BOOLEAN
	,last_visit_type	VARCHAR(20)
	,menstrual_irregularity	BOOLEAN
	,next_inj_calc	DATE
	,nextvisittype	VARCHAR(20)
	,num_children	SMALLINT
	,ocp	BOOLEAN
	,ocp_continue	BOOLEAN
	,ocp_counsel_regularity	BOOLEAN
	,pain_swelling	BOOLEAN
	,ppfp_interest	BOOLEAN
	,ppiud_abdominal_pain	BOOLEAN
	,ppiud_problems	BOOLEAN
	,pptl_abdominal_pain	BOOLEAN
	,pptl_pain_surgery	BOOLEAN
	,pptl_problems	BOOLEAN
	,regular_periods	BOOLEAN
	,tablets_received	BOOLEAN
	,taken_as_prescribed	BOOLEAN
	,tl	BOOLEAN
	,tl_adopted	BOOLEAN
	,tl_consel_incentives	BOOLEAN
	,tl_counsel_follow_up	BOOLEAN
	,tl_counsel_hospital	BOOLEAN
	,tl_counsel_irreversible	BOOLEAN
	,tl_counsel_screening	BOOLEAN
	,tl_counsel_side_effects	BOOLEAN
	,tl_counsel_timing	BOOLEAN
	,understand_tablets	BOOLEAN
	,using_correctly	BOOLEAN
	,where_replace	BOOLEAN
	,why_no_ppffp	VARCHAR(255)
	,within_42	BOOLEAN
);

CREATE TABLE report.ebf_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,add_vaccinations	BOOLEAN
	,at_night	BOOLEAN
	,baby_bcg	BOOLEAN
	,baby_dpt1	BOOLEAN
	,baby_dpt2	BOOLEAN
	,baby_dpt3	BOOLEAN
	,baby_hep_b_0	BOOLEAN
	,baby_hep_b_1	BOOLEAN
	,baby_hep_b_2	BOOLEAN
	,baby_hep_b_3	BOOLEAN
	,baby_opv0	BOOLEAN
	,baby_opv1	BOOLEAN
	,baby_opv2	BOOLEAN
	,baby_opv3	BOOLEAN
	,bcg_date	DATE
	,breastfeeding	BOOLEAN
	,case_name	VARCHAR(255)
	,child_name	VARCHAR(255)
	,cid	VARCHAR(36)
	,counsel_adequate_bf	BOOLEAN
	,counsel_only_milk	BOOLEAN
	,counsel_stop_bottle	BOOLEAN
	,dpt_1_date	DATE
	,dpt_2_date	DATE
	,dpt_3_date	DATE
	,eating	BOOLEAN
	,emptying	BOOLEAN
	,feeding_bottle	BOOLEAN
	,hep_b_0_date	DATE
	,hep_b_1_date	DATE
	,hep_b_2_date	DATE
	,hep_b_3_date	DATE
	,index	INTEGER
	,more_feeding_less_six	BOOLEAN
	,name_update	BOOLEAN
	,new_name	VARCHAR(255)
	,not_breasfeeding	VARCHAR(255)
	,on_demand	BOOLEAN
	,opv_0_date	DATE
	,opv_1_date	DATE
	,opv_2_date	DATE
	,opv_3_date	DATE
	,recent_fever	BOOLEAN
	,tea_other	BOOLEAN
	,treated_less_six	BOOLEAN
	,water_or_milk	BOOLEAN
);

CREATE TABLE report.cf_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,date_cf_1	DATE
	,date_cf_2	DATE
	,date_cf_3	DATE
	,date_cf_4	DATE
	,date_cf_5	DATE
	,date_cf_6	DATE
	,date_last_visit	DATE
	,date_next_cf	DATE
	,last_visit_type	VARCHAR(20)
	,cf_visit_num	SMALLINT
	,children	INTEGER
	,num_children	SMALLINT
	,play_comp_feeding_vid	BOOLEAN
);

CREATE TABLE report.cf_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,add_vaccinations	BOOLEAN
	,amount_good	BOOLEAN
	,baby_bcg	BOOLEAN
	,baby_dpt1	BOOLEAN
	,baby_dpt2	BOOLEAN
	,baby_dpt3	BOOLEAN
	,baby_hep_b_0	BOOLEAN
	,baby_hep_b_1	BOOLEAN
	,baby_hep_b_2	BOOLEAN
	,baby_hep_b_3	BOOLEAN
	,baby_measles	BOOLEAN
	,baby_opv0	BOOLEAN
	,baby_opv1	BOOLEAN
	,baby_opv2	BOOLEAN
	,baby_opv3	BOOLEAN
	,baby_vita1	BOOLEAN
	,bcg_date	DATE
	,case_name	VARCHAR(255)
	,dpt_1_date	DATE
	,dpt_2_date	DATE
	,dpt_3_date	DATE
	,hep_b_0_date	DATE
	,hep_b_1_date	DATE
	,hep_b_2_date	DATE
	,hep_b_3_date	DATE
	,measles_date	DATE
	,opv_0_date	DATE
	,opv_1_date	DATE
	,opv_2_date	DATE
	,opv_3_date	DATE
	,vit_a_1_date	DATE
	,cid	VARCHAR(36)
	,dal	BOOLEAN
	,eaten_cereal	BOOLEAN
	,egg	BOOLEAN
	,fish	BOOLEAN
	,index	INTEGER
	,meat	BOOLEAN
	,milk_curd	BOOLEAN
	,more_feeding_less_six	BOOLEAN
	,name_update	BOOLEAN
	,new_name	VARCHAR(255)
	,number_good	BOOLEAN
	,oil_ghee	BOOLEAN
	,recent_fever	BOOLEAN
	,treated_less_six	BOOLEAN
);


CREATE TABLE report.death_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,close	 VARCHAR(20)
	,mother_alive	BOOLEAN
	,status	VARCHAR(255)
	,cast_num_children	SMALLINT
	,children	INTEGER
	,date_death	DATE
	,death_village	BOOLEAN
	,num_children	SMALLINT
	,place_death	VARCHAR(255)
	,site_death	VARCHAR(255)
);

CREATE TABLE report.death_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,close	VARCHAR(20)
	,child_alive	BOOLEAN
	,child_died_village	BOOLEAN
	,child_place_death	VARCHAR(255)
	,child_site_death	VARCHAR(255)
	,chld_date_death	DATE
	,cid	VARCHAR(36)
	,index	INTEGER
);

CREATE TABLE report.close_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,close	 VARCHAR(20)
	,update	 INTEGER
	,children	INTEGER
	,close_mother	BOOLEAN
	,confirm_close	BOOLEAN
	,death_village	BOOLEAN
	,died_village	VARCHAR(255)
	,dupe_reg	BOOLEAN
	,finished_continuum	BOOLEAN
	,num_children	SMALLINT
);

CREATE TABLE report.close_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,close	VARCHAR(20)
	,child_alive	BOOLEAN
	,cid	VARCHAR(36)
	,close_child	BOOLEAN
	,confirm_close	BOOLEAN
	,date_death	DATE
	,died	BOOLEAN
	,died_village	BOOLEAN
	,dupe_reg	BOOLEAN
	,finished_continuum	BOOLEAN
	,index	INTEGER
	,site_death	VARCHAR(255)
);

CREATE TABLE report.refer_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,cast_num_children	SMALLINT
	,children	INTEGER
	,num_children	SMALLINT
	,refer_mother	BOOLEAN
);

CREATE TABLE report.refer_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,refer_child	BOOLEAN
);


CREATE TABLE report.ui_mother_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,children	INTEGER
	,details_available	BOOLEAN
	,tt_1_date	DATE
	,tt_2_date	DATE
	,tt_booster_date	DATE
	,received_tt1	BOOLEAN
	,received_tt2	BOOLEAN
	,up_to_date	VARCHAR(15)
	,num_children	SMALLINT
	,update_mother	BOOLEAN
);

CREATE TABLE report.ui_child_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.child_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,add_vaccinations	BOOLEAN
	,baby_bcg	BOOLEAN
	,baby_dpt1	BOOLEAN
	,baby_dpt2	BOOLEAN
	,baby_dpt3	BOOLEAN
	,baby_hep_b_0	BOOLEAN
	,baby_hep_b_1	BOOLEAN
	,baby_hep_b_2	BOOLEAN
	,baby_hep_b_3	BOOLEAN
	,baby_measles	BOOLEAN
	,baby_opv0	BOOLEAN
	,baby_opv1	BOOLEAN
	,baby_opv2	BOOLEAN
	,baby_opv3	BOOLEAN
	,baby_vita1	BOOLEAN
	,bcg_date	DATE
	,cid	VARCHAR(36)
	,dpt_1_date	DATE
	,dpt_2_date	DATE
	,dpt_3_date	DATE
	,dpt_booster_date	DATE
	,hep_b_0_date	DATE
	,hep_b_1_date	DATE
	,hep_b_2_date	DATE
	,hep_b_3_date	DATE
	,index	INTEGER
	,measles_date	DATE
	,opv_0_date	DATE
	,opv_1_date	DATE
	,opv_2_date	DATE
	,opv_3_date	DATE
	,opv_booster_date	DATE
	,vit_a_1_date	DATE
);

CREATE TABLE report.abort_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,abortion_type	VARCHAR(255)
	,close	 VARCHAR(20)
	,birth_status	VARCHAR(255)
	,date_aborted	DATE
);

CREATE TABLE report.mo_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,migrate_out_date	DATE
	,migrated_status	VARCHAR(255)
	,status	VARCHAR(255)
	,date_learned	DATE
	,date_left	DATE
	,name	VARCHAR(255)
	,note_given	BOOLEAN
);

CREATE TABLE report.mi_form(
	id SERIAL PRIMARY KEY
	,form_id VARCHAR(36) UNIQUE
	,timeend	TIMESTAMP WITH TIME ZONE
	,timestart	TIMESTAMP WITH TIME ZONE
	,userid	INTEGER REFERENCES report.flw(id)
	,case_id	INTEGER REFERENCES report.mother_case(id)
	,date_modified	TIMESTAMP WITH TIME ZONE
	,date_arrived	DATE
	,date_learned	DATE
	,date_of_delivery	DATE
	,name	VARCHAR(255)
	,preg_status	VARCHAR(255)
	,referral_info	VARCHAR(255)
);