concrete ZWNExtendZul of ZWNExtend = CatZul ** open ResZul,Prelude in {

  lin
    VPShort vp = {
      s = \\c,a,p,t,l => vp.s!c!a!p!t!False ;
      imp_s = vp.imp_s ;
      inf_s = vp.inf_s ;
      iadv = vp.iadv ;
      advs = vp.advs ;
      comp = vp.comp ;
      -- ap_comp = \\_ => [] ;
      hasComp = vp.hasComp ;
      r = vp.r ;
      syl = vp.syl ;
      vptype = vp.vptype
    } ;
}
