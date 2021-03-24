*&---------------------------------------------------------------------*
*& Report  YTESTE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT yteste.


*
*DATA:
*  lv_salesdocument   TYPE vbeln_va,
*  lt_return          TYPE STANDARD TABLE OF bapiret2,
*  lt_order_items_in  TYPE STANDARD TABLE OF bapisditm,
*  lt_order_items_inx TYPE STANDARD TABLE OF bapisditmx,
*  lt_order_partners  TYPE STANDARD TABLE OF bapiparnr.
*
*
*
*DATA(ls_order_header_in) =
*  VALUE bapisdhd1(
*    refobjtype           = 'ZV15'
**      refobjkey            =
**      refdoctype           =
**      doc_type             =
**      collect_no           =
*    sales_org            = 'OVBS'
*    distr_chan           = '10'
*    division             = '20'
**      sales_grp            =
**      sales_off            =
*    req_date_h           = sy-datum
**      date_type            =
**      purch_date           =
**      po_method            =
**      po_supplem           =
**      ref_1                =
**      name                 =
**      telephone            =
**      price_grp            =
**      cust_group           =
**      sales_dist           =
**      price_list           =
**      incoterms1           =
**      incoterms2           =
**      pmnttrms             =
**      dlv_block            =
**      bill_block           =
**      ord_reason           =
**      compl_dlv            =
**      price_date           =
**      qt_valid_f           =
**      qt_valid_t           =
**      ct_valid_f           =
**      ct_valid_t           =
**      cust_grp1            =
**      cust_grp2            =
**      cust_grp3            =
**      cust_grp4            =
**      cust_grp5            =
*    purch_no_c           = |Teste-{ sy-uzeit }|
**      purch_no_s           =
**      po_dat_s             =
**      po_meth_s            =
**      ref_1_s              =
**      sd_doc_cat           =
**      doc_date             =
**      war_date             =
**      ship_cond            =
**      pp_search            =
**      dun_count            =
**      dun_date             =
**      dlvschduse           =
**      pldlvstyp            =
**      ref_doc              =
**      comp_cde_b           =
**      alttax_cls           =
**      tax_class2           =
**      tax_class3           =
**      tax_class4           =
**      tax_class5           =
**      tax_class6           =
**      tax_class7           =
**      tax_class8           =
**      tax_class9           =
**      ref_doc_l            =
**      ass_number           =
**      refdoc_cat           =
**      ordcomb_in           =
**      bill_sched           =
**      invo_sched           =
**      mn_invoice           =
**      exrate_fi            =
**      add_val_dy           =
**      fix_val_dy           =
**      pymt_meth            =
**      accnt_asgn           =
**      exchg_rate           =
**      bill_date            =
**      serv_date            =
**      dunn_key             =
**      dunn_block           =
**      pmtgar_pro           =
**      departm_no           =
**      rec_point            =
**      doc_num_fi           =
**      cstcndgrp1           =
**      cstcndgrp2           =
**      cstcndgrp3           =
**      cstcndgrp4           =
**      cstcndgrp5           =
**      dlv_time             =
**      currency             =
**      curr_iso             =
**      created_by           =
**      taxdep_cty           =
**      taxdst_cty           =
**      eutri_deal           =
**      mast_contr           =
**      ref_proc             =
**      chkprtauth           =
**      cmlqty_dat           =
**      version              =
**      notif_no             =
**      wbs_elem             =
**      exch_rate_fi_v       =
**      exchg_rate_v         =
**      fkk_conacct          =
**      campaign             =
**      doc_class            =
**      h_curr               =
**      h_curr_iso           =
**      ship_type            =
**      s_proc_ind           =
**      ref_doc_l_long       =
**      line_time            =
**      calc_motive          =
**      psm_pstng_date       =
**      treasury_acc_symbol  =
**      business_event_tcode =
**      modification_allowed =
**      cancellation_allowed =
**      payment_methods      =
**      business_partner_no  =
**      reporting_freq       =
**      sepa_mandate_id      =
*) .
*
*DATA(ls_order_header_inx) =
*  VALUE bapisdhd1x(
*    updateflag           = 'I'
*    doc_type             = 'X'
**      collect_no           =
*    sales_org            = 'X'
*    distr_chan           = 'X'
*    division             = 'X'
**      sales_grp            =
**      sales_off            =
*    req_date_h           = 'X'
**      date_type            =
**      purch_date           =
**      po_method            =
**      po_supplem           =
**      ref_1                =
**      name                 =
**      telephone            =
**      price_grp            =
**      cust_group           =
**      sales_dist           =
**      price_list           =
**      incoterms1           =
**      incoterms2           =
**      pmnttrms             =
**      dlv_block            =
**      bill_block           =
**      ord_reason           =
**      compl_dlv            =
**      price_date           =
**      qt_valid_f           =
**      qt_valid_t           =
**      ct_valid_f           =
**      ct_valid_t           =
**      cust_grp1            =
**      cust_grp2            =
**      cust_grp3            =
**      cust_grp4            =
**      cust_grp5            =
*    purch_no_c           = 'X'
**      purch_no_s           =
**      po_dat_s             =
**      po_meth_s            =
**      ref_1_s              =
**      sd_doc_cat           =
**      doc_date             =
**      war_date             =
**      ship_cond            =
**      pp_search            =
**      dun_count            =
**      dun_date             =
**      dlvschduse           =
**      pldlvstyp            =
**      ref_doc              =
**      comp_cde_b           =
**      alttax_cls           =
**      tax_class2           =
**      tax_class3           =
**      tax_class4           =
**      tax_class5           =
**      tax_class6           =
**      tax_class7           =
**      tax_class8           =
**      tax_class9           =
**      ref_doc_l            =
**      ass_number           =
**      refdoc_cat           =
**      ordcomb_in           =
**      bill_sched           =
**      invo_sched           =
**      mn_invoice           =
**      exrate_fi            =
**      add_val_dy           =
**      fix_val_dy           =
**      pymt_meth            =
**      accnt_asgn           =
**      exchg_rate           =
**      bill_date            =
**      serv_date            =
**      dunn_key             =
**      dunn_block           =
**      promotion            =
**      pmtgar_pro           =
**      departm_no           =
**      rec_point            =
**      poitm_no_s           =
**      doc_num_fi           =
**      cstcndgrp1           =
**      cstcndgrp2           =
**      cstcndgrp3           =
**      cstcndgrp4           =
**      cstcndgrp5           =
**      dlv_time             =
**      currency             =
**      taxdep_cty           =
**      taxdst_cty           =
**      eutri_deal           =
**      mast_contr           =
**      ref_proc             =
**      chkprtauth           =
**      cmlqty_dat           =
**      version              =
**      notif_no             =
**      wbs_elem             =
**      exch_rate_fi_v       =
**      exchg_rate_v         =
**      fkk_conacct          =
**      campaign             =
**      doc_class            =
**      h_curr               =
**      ship_type            =
**      s_proc_ind           =
**      line_time            =
**      calc_motive          =
**      psm_pstng_date       =
**      treasury_acc_symbol  =
**      business_event_tcode =
**      modification_allowed =
**      cancellation_allowed =
**      payment_methods      =
**      business_partner_no  =
**      reporting_freq       =
**      sepa_mandate_id      =
*).
*
*
*
*lt_order_items_in =
*  VALUE #( (
*    itm_number           = 10
**    hg_lv_item           =
**    po_itm_no            =
*    material             = CONV matnr( '101169' )
**    alt_to_itm           =
**    cust_mat22           =
**    batch                =
**    dlv_group            =
**    part_dlv             =
**    reason_rej           =
**    bill_block           =
**    bill_date            =
**    plant                =
**    store_loc            =
*    target_qty           = 10
*    target_qu            = CONV dzieme( 'UN' )
**    t_unit_iso           =
**    item_categ           =
**    short_text           =
**    prc_group1           =
**    prc_group2           =
**    prc_group3           =
**    prc_group4           =
**    prc_group5           =
**    prod_hiera           =
**    matl_group           =
**    purch_no_c           =
**    purch_date           =
**    po_method            =
**    ref_1                =
**    purch_no_s           =
**    po_dat_s             =
**    po_meth_s            =
**    ref_1_s              =
**    poitm_no_s           =
**    price_grp            =
**    cust_group           =
**    sales_dist           =
**    price_list           =
**    incoterms1           =
**    incoterms2           =
**    ordcomp_in           =
**    bill_sched           =
**    invo_sched           =
**    mn_invoice           =
**    ex_rate_fi           =
**    add_val_dy           =
**    fix_val_dy           =
**    pmnttrms             =
**    pymt_meth            =
**    accnt_asgn           =
**    exchg_rate           =
**    price_date           =
**    serv_date            =
**    dunn_key             =
**    dunn_block           =
**    promotion            =
**    pmtgar_pro           =
**    doc_num_fi           =
**    departm_no           =
**    rec_point            =
**    cstcndgrp1           =
**    cstcndgrp2           =
**    cstcndgrp3           =
**    cstcndgrp4           =
**    cstcndgrp5           =
**    dlv_time             =
**    sales_unit           =
**    s_unit_iso           =
**    trg_qty_no           =
**    trgqty_den           =
**    rnddlv_qty           =
**    maxdevamnt           =
**    maxdevper            =
**    maxdev_day           =
**    usage_ind            =
**    fixed_quan           =
**    unlmt_dlv            =
**    overdlvtol           =
**    unddlv_tol           =
**    division             =
**    salqtynum            =
**    salqtyden            =
**    gross_wght           =
**    net_weight           =
**    untof_wght           =
**    unof_wtiso           =
**    volume               =
**    volunit              =
**    volunitiso           =
**    dlv_prio             =
**    ship_point           =
**    route                =
**    created_by           =
**    tax_class1           =
**    tax_class2           =
**    tax_class3           =
**    tax_class4           =
**    tax_class5           =
**    tax_class6           =
**    tax_class7           =
**    tax_class8           =
**    tax_class9           =
**    mat_pr_grp           =
**    val_type             =
**    fixdat_qty           =
**    bomexpl_no           =
**    resanalkey           =
**    reqmts_typ           =
**    no_gr_post           =
**    bus_transt           =
**    overhd_key           =
**    cstg_sheet           =
**    matfrgtgrp           =
**    pldlvshdin           =
**    seq_no               =
**    bil_form             =
**    dli_profil           =
**    rev_type             =
**    begdem_per           =
**    pr_ref_mat           =
**    refobjtype           =
**    refobjkey            =
**    reflogsys            =
**    order_prob           =
**    max_pl_dlv           =
**    cfop_code            =
**    taxlawicms           =
**    taxlawipi            =
**    sd_taxcode           =
**    assort_mod           =
**    comp_quant           =
**    target_val           =
**    currency             =
**    curr_iso             =
**    profit_ctr           =
**    orderid              =
**    wbs_elem             =
**    deprec_per           =
**    ref_doc              =
**    ref_doc_it           =
**    ref_doc_ca           =
**    cust_mat35           =
**    exch_rate_fi_v       =
**    exchg_rate_v         =
**    itemguid_atp         =
**    val_contr            =
**    val_con_i            =
**    config_id            =
**    inst_id              =
**    mat_ext              =
**    mat_guid             =
**    mat_vers             =
**    p_mat_ext            =
**    p_mat_guid           =
**    p_mat_vers           =
**    func_area            =
**    altern_bom           =
**    fkk_conacct          =
**    ean_upc              =
**    prodcat              =
**    ship_type            =
**    s_proc_ind           =
**    func_area_long       =
**    bill_rel             =
**    vw_uepos             =
**    campaign             =
**    dlvschduse           =
**    cfop_long            =
**    selection            =
**    mat_entrd            =
**    log_system_own       =
**    itm_type_usage       =
**    taxlawiss            =
**    mat_entrd_external   =
**    mat_entrd_guid       =
**    mat_entrd_version    =
**    loc_taxcat           =
**    loc_zerovat          =
**    loc_actcode          =
**    loc_disttype         =
**    loc_txrelclas        =
**    calc_motive          =
**    compreas             =
**    fund                 =
**    funds_ctr            =
**    cmmt_item            =
**    grant_nbr            =
**    budget_period        =
**    taxlawcofins         =
**    taxlawpis            =
**    treasury_acc_symbol  =
**    business_event_tcode =
**    modification_allowed =
**    cancellation_allowed =
**    payment_methods      =
**    business_partner_no  =
**    reporting_freq       =
**    sepa_mandate_id      =
**    req_segment          =
**    tp_sublevl           =
**    tp_agencid           =
**    tp_altraid           =
**    tp_begper            =
**    tp_endper            =
**    tp_avtype            =
**    tp_main_acct         =
**    tp_sub_acct          =
**    tp_betc              =
*) ) .
*
*
*CALL FUNCTION 'BAPI_SALESORDER_CREATEFROMDAT2'
*  EXPORTING
**   salesdocumentin  =
*    order_header_in  = ls_order_header_in
*    order_header_inx = ls_order_header_inx
**   sender           =
**   binary_relationshiptype =
**   int_number_assignment   =
**   behave_when_error       =
**   logic_switch     =
**   testrun          =
**   convert          = SPACE
*  IMPORTING
*    salesdocument    = lv_salesdocument
*  TABLES
*    return           = lt_return
*    order_items_in   = lt_order_items_in
*    order_items_inx  = lt_order_items_inx
*    order_partners   = lt_order_partners
**   order_schedules_in      =
**   order_schedules_inx     =
**   order_conditions_in     =
**   order_conditions_inx    =
**   order_cfgs_ref   =
**   order_cfgs_inst  =
**   order_cfgs_part_of      =
**   order_cfgs_value =
**   order_cfgs_blob  =
**   order_cfgs_vk    =
**   order_cfgs_refinst      =
**   order_ccard      =
**   order_text       =
**   order_keys       =
**   extensionin      =
**   partneraddresses =
**   extensionex      =
*  .
*
*IF ( lv_salesdocument IS NOT INITIAL ) .
*  WRITE:/'Order: ', lv_salesdocument .
*ENDIF .


START-OF-SELECTION.
  PERFORM call_popup.


FORM call_popup.

  TABLES : sflight.

  DATA: lv_carrid TYPE s_carr_id,
        lv_partner type vbpa-kunnr,
        lt_werks TYPE gds_selrange_werks_tab,
        lv_check TYPE xfeld,
        lv_radio1 TYPE xfeld,
        lv_radio2 TYPE xfeld.

  DATA : lt_att TYPE sci_atttab ,
         ls_att TYPE sci_attent.

  DATA : l_ref TYPE REF TO data.

  CREATE DATA l_ref TYPE REF TO xfeld.

* Radio button
  GET REFERENCE OF lv_radio1 INTO l_ref.
  ls_att-kind = 'R'.
  ls_att-text = 'Manter Parceiro'.
  ls_att-button_group = 'MOD'.
  ls_att-ref = l_ref.
  APPEND ls_att TO lt_att.

  GET REFERENCE OF lv_radio2 INTO l_ref.
  ls_att-kind = 'R'.
  ls_att-text = 'Atualizar para novo Parceiro'.
  ls_att-button_group = 'MOD'.
  ls_att-ref = l_ref.
  APPEND ls_att TO lt_att.



* parameters
  GET REFERENCE OF lv_partner INTO l_ref.
  ls_att-kind = 'S'.
  ls_att-text = 'Parceiro'.
  ls_att-obligatory = 'Y'.
  ls_att-ref = l_ref.
  APPEND ls_att TO lt_att.


** parameters
*  GET REFERENCE OF lv_carrid INTO l_ref.
*  ls_att-kind = 'S'.
*  ls_att-text = 'Parameter'.
*  ls_att-obligatory = 'Y'.
*  ls_att-ref = l_ref.
*  APPEND ls_att TO lt_att.

** SELECT-OPTIONS
*  GET REFERENCE OF lt_werks INTO l_ref.
*  ls_att-kind = 'S'.
*  ls_att-text = 'Select Option'.
*  ls_att-ref = l_ref.
*  APPEND ls_att TO lt_att.
*
** Check box
*  GET REFERENCE OF lv_check INTO l_ref.
*  ls_att-kind = 'C'.
*  ls_att-text = 'Check box'.
*  ls_att-ref = l_ref.
*  APPEND ls_att TO lt_att.




  CALL METHOD cl_ci_query_attributes=>generic
    EXPORTING
      p_name       = 'TEST'
      p_title      = 'TEST2'
      p_attributes = lt_att
*    p_message    =
      p_display    = ''
*  receiving
*    p_break      =
      .

  BREAK-POINT.


ENDFORM.
