
abstract ZWNAdjectives = {

  flags
    startcat = ZWN_Adjective ;

  cat
    ZWN_Adjective ;
    ZWN_S ;
    ZWN_Pron ;
    ZWN_NP ;
    ZWN_APred ;
    ZWN_Temp ;
    ZWN_Pol ;

  fun
    PAdjective : ZWN_S -> ZWN_Adjective ;
    AAdjective : ZWN_NP -> ZWN_Adjective ;

    PredicVP : ZWN_Temp -> ZWN_Pol -> ZWN_Pron -> ZWN_APred -> ZWN_S ;
    PredicVPShort : ZWN_Temp -> ZWN_Pol -> ZWN_Pron -> ZWN_APred -> ZWN_S ;
    AttribVP : ZWN_Temp -> ZWN_Pol -> ZWN_Pron -> ZWN_APred -> ZWN_NP ;
    AttribVPShort : ZWN_Temp -> ZWN_Pol -> ZWN_Pron -> ZWN_APred -> ZWN_NP ;

    ZWN_i_Pron : ZWN_Pron ;
    ZWN_he_Pron : ZWN_Pron ;
    ZWN_it3_Pron : ZWN_Pron ;
    ZWN_it5_Pron : ZWN_Pron ;
    ZWN_it7_Pron : ZWN_Pron ;
    ZWN_it9_Pron : ZWN_Pron ;
    ZWN_it11_Pron : ZWN_Pron ;
    ZWN_it14_Pron : ZWN_Pron ;
    ZWN_it15_Pron : ZWN_Pron ;
    ZWN_it17_Pron : ZWN_Pron ;

    ZWN_they_Pron : ZWN_Pron ;
    ZWN_they4_Pron : ZWN_Pron ;
    ZWN_they6_Pron : ZWN_Pron ;
    ZWN_they8_Pron : ZWN_Pron ;
    ZWN_they10_Pron : ZWN_Pron ;

    ZWN_TPresTemp : ZWN_Temp ;
    ZWN_TPastTemp : ZWN_Temp ;
    ZWN_TFutTemp : ZWN_Temp ;
    ZWN_TRemPastTemp : ZWN_Temp ;
    ZWN_TRemFutTemp : ZWN_Temp ;

    ZWN_PPos : ZWN_Pol ;
    ZWN_PNeg : ZWN_Pol ;

    abject_1_A : ZWN_APred ;
    able_1_A : ZWN_APred ;
    aboriginal_1_A : ZWN_APred ;
    aboriginal_2_A : ZWN_APred ;
    aboriginal_3_A : ZWN_APred ;
    abrupt_1_A : ZWN_APred ;
    absolute_1_A : ZWN_APred ;
    absolved_1_A : ZWN_APred ;
    abstract_1_A : ZWN_APred ;
    abstruse_1_A : ZWN_APred ;
    abundant_1_A : ZWN_APred ;
    acceptable_1_A : ZWN_APred ;
    accessible_1_A : ZWN_APred ;
    accessible_2_A : ZWN_APred ;
    accidental_1_A : ZWN_APred ;
    accurate_1_A : ZWN_APred ;
    accusative_1_A : ZWN_APred ;
    achromatic_1_A : ZWN_APred ;
    acquitted_1_A : ZWN_APred ;
    acrimonious_1_A : ZWN_APred ;
    acrimonious_2_A : ZWN_APred ;
    active_1_A : ZWN_APred ;
    acute_1_A : ZWN_APred ;
    adequate_1_A : ZWN_APred ;
    admirable_1_A : ZWN_APred ;
    advance_1_A : ZWN_APred ;
    advised_1_A : ZWN_APred ;
    aerial_1_A : ZWN_APred ;
    aflutter_1_A : ZWN_APred ;
    aggressive_1_A : ZWN_APred ;
    aggressive_2_A : ZWN_APred ;
    agile_1_A : ZWN_APred ;
    agile_2_A : ZWN_APred ;
    alert_1_A : ZWN_APred ;
    alike_1_A : ZWN_APred ;
    alive_1_A : ZWN_APred ;
    alive_2_A : ZWN_APred ;
    all_important_1_A : ZWN_APred ;
    allotted_1_A : ZWN_APred ;
    alone_1_A : ZWN_APred ;
    alone_2_A : ZWN_APred ;
    alone_3_A : ZWN_APred ;
    alpha_1_A : ZWN_APred ;
    amazing_1_A : ZWN_APred ;
    ambidextrous_1_A : ZWN_APred ;
    ambidextrous_2_A : ZWN_APred ;
    ambitious_1_A : ZWN_APred ;
    amenable_1_A : ZWN_APred ;
    ample_1_A : ZWN_APred ;
    amusing_1_A : ZWN_APred ;
    amusing_2_A : ZWN_APred ;
    analgesic_1_A : ZWN_APred ;
    analogical_1_A : ZWN_APred ;
    analogous_1_A : ZWN_APred ;
    ancestral_1_A : ZWN_APred ;
    ancestral_2_A : ZWN_APred ;
    ancestral_3_A : ZWN_APred ;
    angry_1_A : ZWN_APred ;
    announced_1_A : ZWN_APred ;
    anticipated_1_A : ZWN_APred ;
    appealing_1_A : ZWN_APred ;
    appealing_2_A : ZWN_APred ;
    appeasing_1_A : ZWN_APred ;
    appellative_1_A : ZWN_APred ;
    appreciated_1_A : ZWN_APred ;
    appropriate_1_A : ZWN_APred ;
    apt_1_A : ZWN_APred ;
    archaic_1_A : ZWN_APred ;
    arduous_1_A : ZWN_APred ;
    aroused_1_A : ZWN_APred ;
    arrant_1_A : ZWN_APred ;
    arriving_1_A : ZWN_APred ;
    arrogant_1_A : ZWN_APred ;
    articulate_1_A : ZWN_APred ;
    ashamed_1_A : ZWN_APred ;
    asleep_1_A : ZWN_APred ;
    assertive_1_A : ZWN_APred ;
    assigned_1_A : ZWN_APred ;
    at_leisure_1_A : ZWN_APred ;
    athirst_1_A : ZWN_APred ;
    athletic_1_A : ZWN_APred ;
    atrocious_1_A : ZWN_APred ;
    attending_1_A : ZWN_APred ;
    attenuate_1_A : ZWN_APred ;
    augmented_1_A : ZWN_APred ;
    auspicious_1_A : ZWN_APred ;
    automatic_1_A : ZWN_APred ;
    auxiliary_1_A : ZWN_APred ;
    auxiliary_2_A : ZWN_APred ;
    available_1_A : ZWN_APred ;
    avid_1_A : ZWN_APred ;
    awake_1_A : ZWN_APred ;
    aware_1_A : ZWN_APred ;
    awful_1_A : ZWN_APred ;
    awkward_1_A : ZWN_APred ;
    bad_1_A : ZWN_APred ;
    bad_2_A : ZWN_APred ;
    bad_3_A : ZWN_APred ;
    baffling_1_A : ZWN_APred ;
    baffling_2_A : ZWN_APred ;
    baffling_3_A : ZWN_APred ;
    baking_1_A : ZWN_APred ;
    balanced_1_A : ZWN_APred ;
    bald_1_A : ZWN_APred ;
    banal_1_A : ZWN_APred ;
    banned_1_A : ZWN_APred ;
    barbarous_1_A : ZWN_APred ;
    barbarous_2_A : ZWN_APred ;
    baronial_1_A : ZWN_APred ;
    basal_1_A : ZWN_APred ;
    bass_1_A : ZWN_APred ;
    battered_1_A : ZWN_APred ;
    bedraggled_1_A : ZWN_APred ;
    bedraggled_2_A : ZWN_APred ;
    bedraggled_3_A : ZWN_APred ;
    beguiled_1_A : ZWN_APred ;
    believable_1_A : ZWN_APred ;
    bended_1_A : ZWN_APred ;
    beneficial_1_A : ZWN_APred ;
    benighted_1_A : ZWN_APred ;
    benighted_2_A : ZWN_APred ;
    benign_1_A : ZWN_APred ;
    benumbed_1_A : ZWN_APred ;
    benumbed_2_A : ZWN_APred ;
    betting_1_A : ZWN_APred ;
    big_1_A : ZWN_APred ;
    biological_1_A : ZWN_APred ;
    black_1_A : ZWN_APred ;
    blackguardly_1_A : ZWN_APred ;
    blamable_1_A : ZWN_APred ;
    blamable_2_A : ZWN_APred ;
    blameless_1_A : ZWN_APred ;
    bland_1_A : ZWN_APred ;
    blank_1_A : ZWN_APred ;
    bleak_1_A : ZWN_APred ;
    bleary_1_A : ZWN_APred ;
    blemished_1_A : ZWN_APred ;
    blending_1_A : ZWN_APred ;
    blending_2_A : ZWN_APred ;
    blessed_1_A : ZWN_APred ;
    blessed_2_A : ZWN_APred ;
    blind_1_A : ZWN_APred ;
    blistering_1_A : ZWN_APred ;
    bloody_1_A : ZWN_APred ;
    blue_1_A : ZWN_APred ;
    blunt_1_A : ZWN_APred ;
    bold_1_A : ZWN_APred ;
    boring_1_A : ZWN_APred ;
    born_1_A : ZWN_APred ;
    bouncy_1_A : ZWN_APred ;
    bouncy_2_A : ZWN_APred ;
    bouncy_3_A : ZWN_APred ;
    bound_1_A : ZWN_APred ;
    bracing_1_A : ZWN_APred ;
    brainy_1_A : ZWN_APred ;
    brave_1_A : ZWN_APred ;
    breathless_1_A : ZWN_APred ;
    brickle_1_A : ZWN_APred ;
    bright_1_A : ZWN_APred ;
    brisk_1_A : ZWN_APred ;
    brisk_2_A : ZWN_APred ;
    broad_1_A : ZWN_APred ;
    broad_2_A : ZWN_APred ;
    brutal_1_A : ZWN_APred ;
    built_in_1_A : ZWN_APred ;
    burdened_1_A : ZWN_APred ;
    burning_1_A : ZWN_APred ;
    capable_1_A : ZWN_APred ;
    capped_1_A : ZWN_APred ;
    captious_1_A : ZWN_APred ;
    cardinal_1_A : ZWN_APred ;
    careless_1_A : ZWN_APred ;
    cashable_1_A : ZWN_APred ;
    catchy_1_A : ZWN_APred ;
    cathartic_1_A : ZWN_APred ;
    caucasian_1_A : ZWN_APred ;
    causeless_1_A : ZWN_APred ;
    cautious_1_A : ZWN_APred ;
    ceaseless_1_A : ZWN_APred ;
    celebrated_1_A : ZWN_APred ;
    central_1_A : ZWN_APred ;
    certain_1_A : ZWN_APred ;
    characteristic_1_A : ZWN_APred ;
    charged_1_A : ZWN_APred ;
    charismatic_1_A : ZWN_APred ;
    charitable_1_A : ZWN_APred ;
    charitable_2_A : ZWN_APred ;
    charitable_3_A : ZWN_APred ;
    chatty_1_A : ZWN_APred ;
    cheap_1_A : ZWN_APred ;
    chief_1_A : ZWN_APred ;
    childish_1_A : ZWN_APred ;
    chivalric_1_A : ZWN_APred ;
    chronic_1_A : ZWN_APred ;
    clamant_1_A : ZWN_APred ;
    clear_1_A : ZWN_APred ;
    clear_2_A : ZWN_APred ;
    cleared_1_A : ZWN_APred ;
    clenched_1_A : ZWN_APred ;
    close_1_A : ZWN_APred ;
    cloudy_1_A : ZWN_APred ;
    cloudy_2_A : ZWN_APred ;
    cobwebby_1_A : ZWN_APred ;
    cogent_1_A : ZWN_APred ;
    color_blind_1_A : ZWN_APred ;
    combined_1_A : ZWN_APred ;
    commanding_1_A : ZWN_APred ;
    common_1_A : ZWN_APred ;
    compare_1_A : ZWN_APred ;
    compatible_1_A : ZWN_APred ;
    competent_1_A : ZWN_APred ;
    competitive_1_A : ZWN_APred ;
    complete_1_A : ZWN_APred ;
    complex_1_A : ZWN_APred ;
    compliant_1_A : ZWN_APred ;
    compliant_2_A : ZWN_APred ;
    complimentary_1_A : ZWN_APred ;
    composed_1_A : ZWN_APred ;
    comprehensive_1_A : ZWN_APred ;
    comprehensive_2_A : ZWN_APred ;
    conceited_1_A : ZWN_APred ;
    conciliative_1_A : ZWN_APred ;
    concrete_1_A : ZWN_APred ;
    condign_1_A : ZWN_APred ;
    confined_1_A : ZWN_APred ;
    congenital_1_A : ZWN_APred ;
    conjectural_1_A : ZWN_APred ;
    conscious_1_A : ZWN_APred ;
    conscious_2_A : ZWN_APred ;
    consentaneous_1_A : ZWN_APred ;
    consequential_1_A : ZWN_APred ;
    consequential_2_A : ZWN_APred ;
    considerable_1_A : ZWN_APred ;
    consistent_1_A : ZWN_APred ;
    constant_1_A : ZWN_APred ;
    constituted_1_A : ZWN_APred ;
    constricted_1_A : ZWN_APred ;
    constructive_1_A : ZWN_APred ;
    continuous_1_A : ZWN_APred ;
    controlled_1_A : ZWN_APred ;
    controversial_1_A : ZWN_APred ;
    convenient_1_A : ZWN_APred ;
    conversant_1_A : ZWN_APred ;
    corpulent_1_A : ZWN_APred ;
    correct_1_A : ZWN_APred ;
    corrected_1_A : ZWN_APred ;
    corrective_1_A : ZWN_APred ;
    corrigible_1_A : ZWN_APred ;
    cosmetic_1_A : ZWN_APred ;
    coveted_1_A : ZWN_APred ;
    covetous_1_A : ZWN_APred ;
    creased_1_A : ZWN_APred ;
    cringing_1_A : ZWN_APred ;
    cringing_2_A : ZWN_APred ;
    crisp_1_A : ZWN_APred ;
    critical_1_A : ZWN_APred ;
    critical_2_A : ZWN_APred ;
    crouched_1_A : ZWN_APred ;
    crowned_1_A : ZWN_APred ;
    crucial_1_A : ZWN_APred ;
    cunning_1_A : ZWN_APred ;
    cursed_1_A : ZWN_APred ;
    cushy_1_A : ZWN_APred ;
    cutting_1_A : ZWN_APred ;
    dainty_1_A : ZWN_APred ;
    damaged_1_A : ZWN_APred ;
    dangerous_1_A : ZWN_APred ;
    dangerous_2_A : ZWN_APred ;
    dangerous_3_A : ZWN_APred ;
    dangerous_4_A : ZWN_APred ;
    darkening_1_A : ZWN_APred ;
    daytime_1_A : ZWN_APred ;
    de_luxe_1_A : ZWN_APred ;
    de_luxe_2_A : ZWN_APred ;
    dead_1_A : ZWN_APred ;
    dead_2_A : ZWN_APred ;
    dead_3_A : ZWN_APred ;
    dead_4_A : ZWN_APred ;
    dead_5_A : ZWN_APred ;
    deadly_1_A : ZWN_APred ;
    deaf_1_A : ZWN_APred ;
    decadent_1_A : ZWN_APred ;
    decayed_1_A : ZWN_APred ;
    deceitful_1_A : ZWN_APred ;
    deceitful_2_A : ZWN_APred ;
    deceitful_3_A : ZWN_APred ;
    decided_1_A : ZWN_APred ;
    decisive_1_A : ZWN_APred ;
    deep_1_A : ZWN_APred ;
    deep_2_A : ZWN_APred ;
    deepening_1_A : ZWN_APred ;
    deficient_1_A : ZWN_APred ;
    deficient_2_A : ZWN_APred ;
    definable_1_A : ZWN_APred ;
    defined_1_A : ZWN_APred ;
    definite_1_A : ZWN_APred ;
    deliberate_1_A : ZWN_APred ;
    delinquent_1_A : ZWN_APred ;
    denotative_1_A : ZWN_APred ;
    dependable_1_A : ZWN_APred ;
    depressing_1_A : ZWN_APred ;
    descriptive_1_A : ZWN_APred ;
    desert_1_A : ZWN_APred ;
    deserved_1_A : ZWN_APred ;
    desirable_1_A : ZWN_APred ;
    desirable_2_A : ZWN_APred ;
    desirous_1_A : ZWN_APred ;
    detectable_1_A : ZWN_APred ;
    determinable_1_A : ZWN_APred ;
    determinate_1_A : ZWN_APred ;
    developing_1_A : ZWN_APred ;
    different_1_A : ZWN_APred ;
    differentiated_1_A : ZWN_APred ;
    diffident_1_A : ZWN_APred ;
    diffident_2_A : ZWN_APred ;
    diminished_1_A : ZWN_APred ;
    diminished_2_A : ZWN_APred ;
    diplomatic_1_A : ZWN_APred ;
    diplomatic_2_A : ZWN_APred ;
    direct_1_A : ZWN_APred ;
    direct_2_A : ZWN_APred ;
    direct_3_A : ZWN_APred ;
    direct_4_A : ZWN_APred ;
    discernible_1_A : ZWN_APred ;
    discernible_2_A : ZWN_APred ;
    discreet_1_A : ZWN_APred ;
    discriminate_1_A : ZWN_APred ;
    disposable_1_A : ZWN_APred ;
    disqualified_1_A : ZWN_APred ;
    distorted_1_A : ZWN_APred ;
    distressful_1_A : ZWN_APred ;
    distributed_1_A : ZWN_APred ;
    diurnal_1_A : ZWN_APred ;
    divisible_1_A : ZWN_APred ;
    doleful_1_A : ZWN_APred ;
    domestic_1_A : ZWN_APred ;
    dominated_1_A : ZWN_APred ;
    domineering_1_A : ZWN_APred ;
    double_1_A : ZWN_APred ;
    downright_1_A : ZWN_APred ;
    dragging_1_A : ZWN_APred ;
    dramatic_1_A : ZWN_APred ;
    drawn_out_1_A : ZWN_APred ;
    dreamy_1_A : ZWN_APred ;
    driving_1_A : ZWN_APred ;
    droll_1_A : ZWN_APred ;
    ductile_1_A : ZWN_APred ;
    due_1_A : ZWN_APred ;
    durable_1_A : ZWN_APred ;
    dynamic_1_A : ZWN_APred ;
    eager_1_A : ZWN_APred ;
    earned_1_A : ZWN_APred ;
    easy_1_A : ZWN_APred ;
    easy_2_A : ZWN_APred ;
    easy_3_A : ZWN_APred ;
    echoic_1_A : ZWN_APred ;
    economic_1_A : ZWN_APred ;
    edged_1_A : ZWN_APred ;
    edified_1_A : ZWN_APred ;
    edifying_1_A : ZWN_APred ;
    educated_1_A : ZWN_APred ;
    effective_1_A : ZWN_APred ;
    effectual_1_A : ZWN_APred ;
    efficacious_1_A : ZWN_APred ;
    efficient_1_A : ZWN_APred ;
    effluent_1_A : ZWN_APred ;
    effusive_1_A : ZWN_APred ;
    elective_1_A : ZWN_APred ;
    elegant_1_A : ZWN_APred ;
    elementary_1_A : ZWN_APred ;
    eligible_1_A : ZWN_APred ;
    eligible_2_A : ZWN_APred ;
    embedded_1_A : ZWN_APred ;
    emotionless_1_A : ZWN_APred ;
    empty_1_A : ZWN_APred ;
    encouraging_1_A : ZWN_APred ;
    endowed_1_A : ZWN_APred ;
    energetic_1_A : ZWN_APred ;
    engaged_1_A : ZWN_APred ;
    enjoyable_1_A : ZWN_APred ;
    enlarged_1_A : ZWN_APred ;
    enlightened_1_A : ZWN_APred ;
    enlightened_2_A : ZWN_APred ;
    entering_1_A : ZWN_APred ;
    enterprising_1_A : ZWN_APred ;
    enthusiastic_1_A : ZWN_APred ;
    epicurean_1_A : ZWN_APred ;
    equal_1_A : ZWN_APred ;
    equitable_1_A : ZWN_APred ;
    equivalent_1_A : ZWN_APred ;
    equivalent_2_A : ZWN_APred ;
    esurient_1_A : ZWN_APred ;
    esurient_2_A : ZWN_APred ;
    esurient_3_A : ZWN_APred ;
    euphoric_1_A : ZWN_APred ;
    evasive_1_A : ZWN_APred ;
    even_1_A : ZWN_APred ;
    even_2_A : ZWN_APred ;
    excited_1_A : ZWN_APred ;
    exclusive_1_A : ZWN_APred ;
    exoteric_1_A : ZWN_APred ;
    expected_1_A : ZWN_APred ;
    expended_1_A : ZWN_APred ;
    expended_2_A : ZWN_APred ;
    expensive_1_A : ZWN_APred ;
    expensive_2_A : ZWN_APred ;
    experienced_1_A : ZWN_APred ;
    experienced_2_A : ZWN_APred ;
    explanatory_1_A : ZWN_APred ;
    explorative_1_A : ZWN_APred ;
    express_1_A : ZWN_APred ;
    external_1_A : ZWN_APred ;
    extraneous_1_A : ZWN_APred ;
    extraordinary_1_A : ZWN_APred ;
    extrinsic_1_A : ZWN_APred ;
    exultant_1_A : ZWN_APred ;
    exultant_2_A : ZWN_APred ;
    exultant_3_A : ZWN_APred ;
    fabulous_1_A : ZWN_APred ;
    faineant_1_A : ZWN_APred ;
    faineant_2_A : ZWN_APred ;
    faithful_1_A : ZWN_APred ;
    fallacious_1_A : ZWN_APred ;
    fallen_1_A : ZWN_APred ;
    fallible_1_A : ZWN_APred ;
    fallible_2_A : ZWN_APred ;
    false_1_A : ZWN_APred ;
    familial_1_A : ZWN_APred ;
    familial_2_A : ZWN_APred ;
    familiar_1_A : ZWN_APred ;
    familiar_2_A : ZWN_APred ;
    farcical_1_A : ZWN_APred ;
    fashionable_1_A : ZWN_APred ;
    fast_1_A : ZWN_APred ;
    fast_2_A : ZWN_APred ;
    fast_3_A : ZWN_APred ;
    fat_1_A : ZWN_APred ;
    fatal_1_A : ZWN_APred ;
    fatal_2_A : ZWN_APred ;
    fiddling_1_A : ZWN_APred ;
    fiery_1_A : ZWN_APred ;
    fine_1_A : ZWN_APred ;
    fine_2_A : ZWN_APred ;
    finical_1_A : ZWN_APred ;
    finished_1_A : ZWN_APred ;
    firm_1_A : ZWN_APred ;
    fitting_1_A : ZWN_APred ;
    flat_1_A : ZWN_APred ;
    flat_2_A : ZWN_APred ;
    fleeting_1_A : ZWN_APred ;
    flexible_1_A : ZWN_APred ;
    forceful_1_A : ZWN_APred ;
    forcible_1_A : ZWN_APred ;
    forlorn_1_A : ZWN_APred ;
    formal_1_A : ZWN_APred ;
    formidable_1_A : ZWN_APred ;
    formulated_1_A : ZWN_APred ;
    forward_1_A : ZWN_APred ;
    foster_1_A : ZWN_APred ;
    foster_2_A : ZWN_APred ;
    fragrant_1_A : ZWN_APred ;
    free_1_A : ZWN_APred ;
    frequent_1_A : ZWN_APred ;
    fresh_1_A : ZWN_APred ;
    friendly_1_A : ZWN_APred ;
    friendly_2_A : ZWN_APred ;
    frigid_1_A : ZWN_APred ;
    frigid_2_A : ZWN_APred ;
    frigid_3_A : ZWN_APred ;
    frosty_1_A : ZWN_APred ;
    frosty_2_A : ZWN_APred ;
    frozen_1_A : ZWN_APred ;
    full_1_A : ZWN_APred ;
    funereal_1_A : ZWN_APred ;
    future_1_A : ZWN_APred ;
    gallant_1_A : ZWN_APred ;
    generalised_1_A : ZWN_APred ;
    generative_1_A : ZWN_APred ;
    gentle_1_A : ZWN_APred ;
    gifted_1_A : ZWN_APred ;
    gifted_2_A : ZWN_APred ;
    gluey_1_A : ZWN_APred ;
    good_1_A : ZWN_APred ;
    good_2_A : ZWN_APred ;
    governing_1_A : ZWN_APred ;
    grandiose_1_A : ZWN_APred ;
    graphic_1_A : ZWN_APred ;
    grateful_1_A : ZWN_APred ;
    grave_1_A : ZWN_APred ;
    great_1_A : ZWN_APred ;
    great_2_A : ZWN_APred ;
    greater_1_A : ZWN_APred ;
    gregarious_1_A : ZWN_APred ;
    gregarious_2_A : ZWN_APred ;
    grievous_1_A : ZWN_APred ;
    grotesque_1_A : ZWN_APred ;
    gushing_1_A : ZWN_APred ;
    hand_crafted_1_A : ZWN_APred ;
    handy_1_A : ZWN_APred ;
    happy_1_A : ZWN_APred ;
    hard_1_A : ZWN_APred ;
    hard_2_A : ZWN_APred ;
    harmful_1_A : ZWN_APred ;
    harsh_1_A : ZWN_APred ;
    harsh_2_A : ZWN_APred ;
    heated_1_A : ZWN_APred ;
    heavy_1_A : ZWN_APred ;
    heightening_1_A : ZWN_APred ;
    heritable_1_A : ZWN_APred ;
    high_1_A : ZWN_APred ;
    high_2_A : ZWN_APred ;
    high_3_A : ZWN_APred ;
    high_energy_1_A : ZWN_APred ;
    highbrow_1_A : ZWN_APred ;
    higher_1_A : ZWN_APred ;
    historic_1_A : ZWN_APred ;
    histrionic_1_A : ZWN_APred ;
    home_1_A : ZWN_APred ;
    homemade_1_A : ZWN_APred ;
    homespun_1_A : ZWN_APred ;
    honest_1_A : ZWN_APred ;
    hopeful_1_A : ZWN_APred ;
    hopeless_1_A : ZWN_APred ;
    hostile_1_A : ZWN_APred ;
    hot_1_A : ZWN_APred ;
    hot_2_A : ZWN_APred ;
    human_1_A : ZWN_APred ;
    hungry_1_A : ZWN_APred ;
    hurtful_1_A : ZWN_APred ;
    hypercritical_1_A : ZWN_APred ;
    hypercritical_2_A : ZWN_APred ;
    ignorant_1_A : ZWN_APred ;
    ignorant_2_A : ZWN_APred ;
    ignorant_3_A : ZWN_APred ;
    illative_1_A : ZWN_APred ;
    imaginative_1_A : ZWN_APred ;
    imaginative_2_A : ZWN_APred ;
    imitative_1_A : ZWN_APred ;
    immaterial_1_A : ZWN_APred ;
    impellent_1_A : ZWN_APred ;
    imperative_1_A : ZWN_APred ;
    implicit_1_A : ZWN_APred ;
    imposed_1_A : ZWN_APred ;
    impressive_1_A : ZWN_APred ;
    impressive_2_A : ZWN_APred ;
    improbable_1_A : ZWN_APred ;
    improved_1_A : ZWN_APred ;
    in_essence_1_A : ZWN_APred ;
    inactive_1_A : ZWN_APred ;
    inadequate_1_A : ZWN_APred ;
    inappropriate_1_A : ZWN_APred ;
    inaugural_1_A : ZWN_APred ;
    incapable_1_A : ZWN_APred ;
    inchoate_1_A : ZWN_APred ;
    incidental_1_A : ZWN_APred ;
    inclined_1_A : ZWN_APred ;
    inclined_2_A : ZWN_APred ;
    incongruous_1_A : ZWN_APred ;
    inconsequent_1_A : ZWN_APred ;
    incontestable_1_A : ZWN_APred ;
    incontrovertible_1_A : ZWN_APred ;
    incorrect_1_A : ZWN_APred ;
    incorrigible_1_A : ZWN_APred ;
    increased_1_A : ZWN_APred ;
    incredible_1_A : ZWN_APred ;
    indecisive_1_A : ZWN_APred ;
    indefatigable_1_A : ZWN_APred ;
    indefeasible_1_A : ZWN_APred ;
    indefinite_1_A : ZWN_APred ;
    independent_1_A : ZWN_APred ;
    indeterminate_1_A : ZWN_APred ;
    indirect_1_A : ZWN_APred ;
    industrial_1_A : ZWN_APred ;
    inferential_1_A : ZWN_APred ;
    infinite_1_A : ZWN_APred ;
    inflected_1_A : ZWN_APred ;
    influential_1_A : ZWN_APred ;
    informal_1_A : ZWN_APred ;
    informed_1_A : ZWN_APred ;
    inhuman_1_A : ZWN_APred ;
    inimical_1_A : ZWN_APred ;
    inimical_2_A : ZWN_APred ;
    inner_1_A : ZWN_APred ;
    institutional_1_A : ZWN_APred ;
    intact_1_A : ZWN_APred ;
    integrated_1_A : ZWN_APred ;
    interactive_1_A : ZWN_APred ;
    intermediate_1_A : ZWN_APred ;
    interpreted_1_A : ZWN_APred ;
    intramural_1_A : ZWN_APred ;
    invisible_1_A : ZWN_APred ;
    irrelevant_1_A : ZWN_APred ;
    jagged_1_A : ZWN_APred ;
    joyless_1_A : ZWN_APred ;
    junior_1_A : ZWN_APred ;
    jural_1_A : ZWN_APred ;
    kind_1_A : ZWN_APred ;
    known_1_A : ZWN_APred ;
    lamenting_1_A : ZWN_APred ;
    land_1_A : ZWN_APred ;
    large_scale_1_A : ZWN_APred ;
    lasting_1_A : ZWN_APred ;
    laudatory_1_A : ZWN_APred ;
    laudatory_2_A : ZWN_APred ;
    law_abiding_1_A : ZWN_APred ;
    law_abiding_2_A : ZWN_APred ;
    lawful_1_A : ZWN_APred ;
    lawful_2_A : ZWN_APred ;
    leaky_1_A : ZWN_APred ;
    lean_1_A : ZWN_APred ;
    learned_1_A : ZWN_APred ;
    legal_1_A : ZWN_APred ;
    legendary_1_A : ZWN_APred ;
    legitimate_1_A : ZWN_APred ;
    life_giving_1_A : ZWN_APred ;
    life_giving_2_A : ZWN_APred ;
    life_sustaining_1_A : ZWN_APred ;
    light_1_A : ZWN_APred ;
    like_1_A : ZWN_APred ;
    likely_1_A : ZWN_APred ;
    lily_white_1_A : ZWN_APred ;
    limited_1_A : ZWN_APred ;
    live_1_A : ZWN_APred ;
    living_1_A : ZWN_APred ;
    logical_1_A : ZWN_APred ;
    lonely_1_A : ZWN_APred ;
    long_1_A : ZWN_APred ;
    longer_1_A : ZWN_APred ;
    longer_2_A : ZWN_APred ;
    longitudinal_1_A : ZWN_APred ;
    loose_1_A : ZWN_APred ;
    lost_1_A : ZWN_APred ;
    loud_1_A : ZWN_APred ;
    loyal_1_A : ZWN_APred ;
    lucky_1_A : ZWN_APred ;
    maimed_1_A : ZWN_APred ;
    major_1_A : ZWN_APred ;
    major_2_A : ZWN_APred ;
    manual_1_A : ZWN_APred ;
    marked_1_A : ZWN_APred ;
    married_1_A : ZWN_APred ;
    married_2_A : ZWN_APred ;
    massive_1_A : ZWN_APred ;
    mature_1_A : ZWN_APred ;
    maxi_1_A : ZWN_APred ;
    maximal_1_A : ZWN_APred ;
    meaningful_1_A : ZWN_APred ;
    medial_1_A : ZWN_APred ;
    memorable_1_A : ZWN_APred ;
    middle_1_A : ZWN_APred ;
    midi_1_A : ZWN_APred ;
    minded_1_A : ZWN_APred ;
    minimal_1_A : ZWN_APred ;
    minor_1_A : ZWN_APred ;
    mobile_1_A : ZWN_APred ;
    modest_1_A : ZWN_APred ;
    mountain_1_A : ZWN_APred ;
    mountainous_1_A : ZWN_APred ;
    moving_1_A : ZWN_APred ;
    nice_1_A : ZWN_APred ;
    nightlong_1_A : ZWN_APred ;
    noble_1_A : ZWN_APred ;
    noble_2_A : ZWN_APred ;
    noisy_1_A : ZWN_APred ;
    nonalcoholic_1_A : ZWN_APred ;
    noticeable_1_A : ZWN_APred ;
    obligatory_1_A : ZWN_APred ;
    obscene_1_A : ZWN_APred ;
    obsolete_1_A : ZWN_APred ;
    obstinate_1_A : ZWN_APred ;
    occluded_1_A : ZWN_APred ;
    of_value_1_A : ZWN_APred ;
    offensive_1_A : ZWN_APred ;
    offensive_2_A : ZWN_APred ;
    one_1_A : ZWN_APred ;
    open_1_A : ZWN_APred ;
    open_2_A : ZWN_APred ;
    operative_1_A : ZWN_APred ;
    opposed_1_A : ZWN_APred ;
    optimistic_1_A : ZWN_APred ;
    optional_1_A : ZWN_APred ;
    ordinary_1_A : ZWN_APred ;
    ordinary_2_A : ZWN_APred ;
    orient_1_A : ZWN_APred ;
    other_1_A : ZWN_APred ;
    out_1_A : ZWN_APred ;
    outsize_1_A : ZWN_APred ;
    overheated_1_A : ZWN_APred ;
    overriding_1_A : ZWN_APred ;
    oversea_1_A : ZWN_APred ;
    parallel_1_A : ZWN_APred ;
    paralytic_1_A : ZWN_APred ;
    particular_1_A : ZWN_APred ;
    particular_2_A : ZWN_APred ;
    pass_1_A : ZWN_APred ;
    passionate_1_A : ZWN_APred ;
    past_1_A : ZWN_APred ;
    pathetic_1_A : ZWN_APred ;
    patient_1_A : ZWN_APred ;
    peaceful_1_A : ZWN_APred ;
    pent_up_1_A : ZWN_APred ;
    perennial_1_A : ZWN_APred ;
    pestiferous_1_A : ZWN_APred ;
    piercing_1_A : ZWN_APred ;
    placid_1_A : ZWN_APred ;
    poor_1_A : ZWN_APred ;
    popular_1_A : ZWN_APred ;
    portable_1_A : ZWN_APred ;
    practical_1_A : ZWN_APred ;
    precarious_1_A : ZWN_APred ;
    precise_1_A : ZWN_APred ;
    pregnant_1_A : ZWN_APred ;
    preliminary_1_A : ZWN_APred ;
    premature_1_A : ZWN_APred ;
    prerequisite_1_A : ZWN_APred ;
    primary_1_A : ZWN_APred ;
    primary_2_A : ZWN_APred ;
    privileged_1_A : ZWN_APred ;
    probable_1_A : ZWN_APred ;
    projectile_1_A : ZWN_APred ;
    promotive_1_A : ZWN_APred ;
    prone_1_A : ZWN_APred ;
    prone_2_A : ZWN_APred ;
    proper_1_A : ZWN_APred ;
    proportional_1_A : ZWN_APred ;
    protected_1_A : ZWN_APred ;
    puckered_1_A : ZWN_APred ;
    qualified_1_A : ZWN_APred ;
    quenched_1_A : ZWN_APred ;
    random_1_A : ZWN_APred ;
    rational_1_A : ZWN_APred ;
    raw_1_A : ZWN_APred ;
    ready_1_A : ZWN_APred ;
    reasonable_1_A : ZWN_APred ;
    red_hot_1_A : ZWN_APred ;
    reformative_1_A : ZWN_APred ;
    registered_1_A : ZWN_APred ;
    regular_1_A : ZWN_APred ;
    related_1_A : ZWN_APred ;
    relative_1_A : ZWN_APred ;
    relevant_1_A : ZWN_APred ;
    religious_1_A : ZWN_APred ;
    reluctant_1_A : ZWN_APred ;
    representative_1_A : ZWN_APred ;
    resolute_1_A : ZWN_APred ;
    respectable_1_A : ZWN_APred ;
    restricted_1_A : ZWN_APred ;
    resupine_1_A : ZWN_APred ;
    returnable_1_A : ZWN_APred ;
    revolutionary_1_A : ZWN_APred ;
    rightful_1_A : ZWN_APred ;
    road_1_A : ZWN_APred ;
    rough_1_A : ZWN_APred ;
    running_1_A : ZWN_APred ;
    running_2_A : ZWN_APred ;
    running_3_A : ZWN_APred ;
    rush_1_A : ZWN_APred ;
    sad_1_A : ZWN_APred ;
    sad_2_A : ZWN_APred ;
    saddled_1_A : ZWN_APred ;
    safe_1_A : ZWN_APred ;
    satisfactory_1_A : ZWN_APred ;
    scintillating_1_A : ZWN_APred ;
    sealed_1_A : ZWN_APred ;
    secondary_1_A : ZWN_APred ;
    seeable_1_A : ZWN_APred ;
    segregated_1_A : ZWN_APred ;
    self_propelled_1_A : ZWN_APred ;
    senior_1_A : ZWN_APred ;
    sensitive_1_A : ZWN_APred ;
    sensual_1_A : ZWN_APred ;
    separate_1_A : ZWN_APred ;
    serious_1_A : ZWN_APred ;
    severe_1_A : ZWN_APred ;
    shallow_1_A : ZWN_APred ;
    sharp_1_A : ZWN_APred ;
    sharpened_1_A : ZWN_APred ;
    shortened_1_A : ZWN_APred ;
    single_1_A : ZWN_APred ;
    sinistral_1_A : ZWN_APred ;
    skilled_1_A : ZWN_APred ;
    skin_deep_1_A : ZWN_APred ;
    slippery_1_A : ZWN_APred ;
    social_1_A : ZWN_APred ;
    soft_1_A : ZWN_APred ;
    soft_2_A : ZWN_APred ;
    solicited_1_A : ZWN_APred ;
    solid_1_A : ZWN_APred ;
    solid_2_A : ZWN_APred ;
    sorrowful_1_A : ZWN_APred ;
    specified_1_A : ZWN_APred ;
    square_1_A : ZWN_APred ;
    stable_1_A : ZWN_APred ;
    stable_2_A : ZWN_APred ;
    stand_up_1_A : ZWN_APred ;
    standing_1_A : ZWN_APred ;
    standing_2_A : ZWN_APred ;
    static_1_A : ZWN_APred ;
    steep_1_A : ZWN_APred ;
    sterile_1_A : ZWN_APred ;
    stifling_1_A : ZWN_APred ;
    strategic_1_A : ZWN_APred ;
    stretched_1_A : ZWN_APred ;
    stubborn_1_A : ZWN_APred ;
    stung_1_A : ZWN_APred ;
    sturdy_1_A : ZWN_APred ;
    submissive_1_A : ZWN_APred ;
    subsequent_1_A : ZWN_APred ;
    successful_1_A : ZWN_APred ;
    suchlike_1_A : ZWN_APred ;
    sufficient_1_A : ZWN_APred ;
    superior_1_A : ZWN_APred ;
    supposed_1_A : ZWN_APred ;
    supposed_2_A : ZWN_APred ;
    surprised_1_A : ZWN_APred ;
    sweeping_1_A : ZWN_APred ;
    tendencious_1_A : ZWN_APred ;
    tender_1_A : ZWN_APred ;
    tender_2_A : ZWN_APred ;
    tender_3_A : ZWN_APred ;
    tense_1_A : ZWN_APred ;
    tense_2_A : ZWN_APred ;
    thick_1_A : ZWN_APred ;
    third_dimensional_1_A : ZWN_APred ;
    thirsty_1_A : ZWN_APred ;
    thorny_1_A : ZWN_APred ;
    three_legged_1_A : ZWN_APred ;
    thundering_1_A : ZWN_APred ;
    tight_1_A : ZWN_APred ;
    tight_2_A : ZWN_APred ;
    tight_fitting_1_A : ZWN_APred ;
    time_honored_1_A : ZWN_APred ;
    tolerant_1_A : ZWN_APred ;
    topical_1_A : ZWN_APred ;
    tough_1_A : ZWN_APred ;
    toxic_1_A : ZWN_APred ;
    tragic_1_A : ZWN_APred ;
    trampled_1_A : ZWN_APred ;
    traveled_1_A : ZWN_APred ;
    trying_1_A : ZWN_APred ;
    typical_1_A : ZWN_APred ;
    unambiguous_1_A : ZWN_APred ;
    unaware_1_A : ZWN_APred ;
    uncontrollable_1_A : ZWN_APred ;
    undamaged_1_A : ZWN_APred ;
    undefined_1_A : ZWN_APred ;
    uneasy_1_A : ZWN_APred ;
    unemployed_1_A : ZWN_APred ;
    unequal_1_A : ZWN_APred ;
    uneven_1_A : ZWN_APred ;
    unexpected_1_A : ZWN_APred ;
    unexpended_1_A : ZWN_APred ;
    unflattering_1_A : ZWN_APred ;
    unfortunate_1_A : ZWN_APred ;
    unheated_1_A : ZWN_APred ;
    uniform_1_A : ZWN_APred ;
    unimproved_1_A : ZWN_APred ;
    uninflected_1_A : ZWN_APred ;
    unironed_1_A : ZWN_APred ;
    unknown_1_A : ZWN_APred ;
    unlikely_1_A : ZWN_APred ;
    unpleasant_1_A : ZWN_APred ;
    unthreatening_1_A : ZWN_APred ;
    unthreatening_2_A : ZWN_APred ;
    uplifted_1_A : ZWN_APred ;
    valid_1_A : ZWN_APred ;
    valid_2_A : ZWN_APred ;
    valuable_1_A : ZWN_APred ;
    verbal_1_A : ZWN_APred ;
    vigorous_1_A : ZWN_APred ;
    vigorous_2_A : ZWN_APred ;
    violent_1_A : ZWN_APred ;
    washy_1_A : ZWN_APred ;
    well_balanced_1_A : ZWN_APred ;
    well_read_1_A : ZWN_APred ;
    whacking_1_A : ZWN_APred ;
    white_1_A : ZWN_APred ;
    wintery_1_A : ZWN_APred ;
    written_1_A : ZWN_APred ;
    wrong_1_A : ZWN_APred ;
    wrongful_1_A : ZWN_APred ;

}
