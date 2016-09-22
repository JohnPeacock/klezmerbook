# -*-Makefile-*- Makefile mode for Emacs

# following are from kammen:
#	bulgar_17
#	freylekhs_02
#	freylekhs_04
#	freylekhs_05
#	freylekhs_09
#	fun_der_khupe_2
#	happy_nigun_9_12
#	itsikel
#	jewish_overture
#	kamariska
#	kazatshok_01
#	kazatshok_03
#	keshenever_bulgar
#	kolemeyke_20      - moved to extras
#	kolemeyke_21
#	nokh_a_bisel
#	odessa_bulgar_3
#	odesser_bulgar
#	padespan
#	polish_polka
#	rumeynisher_hora_13
#	rumeynisher_hora_16
#	rumeynisher_hora_un_bulgar
#	russishe_sher_01
#	russishe_sher_02
#	sherele_01        - moved to extras
#	shpilt_mir_klezmorimlekh
#	shtiler_bulgar
#	shuster_un_shnayder_tants
#	ukranian_2
#	ukranian_4
#	yor_nokh_mayn_khasene
#

 SUBDIRS = \
	00_titlepage news oldnews \
	abi_gezunt_1 a_la_una_yo_naci ale_brider alter_tsigayner \
	am_yisrael_chai am_yisrael_chai_rockoff araber_tants \
	artsa_alinu avre_este_abajour \
	bay_a_glezele_mashke bay_mir_bistu_sheyn_1 baym_rebn_in_palestina \
	bolter_bulgar bublitchki bulgar_17 \
	cuando_el_rey_nimrod \
	david_melech_yisrael dire_gelt \
	doina_tarras dona_dona \
	eileh_chamdah_libi elohim_medley en_el_cafe_del_amanecer \
	fiselekh_fiselekh flatbush_waltz freylekhs_02 freylekhs_04 \
	freylekhs_05 freylekhs_09 freylekhs_in_cm freylekhs_in_d_freygish \
	freylekhs_in_dm freylekhs_medley fun_der_khupe_2 fun_tashlikh \
	galitsianer_sher gasn_nigun glezele_yash goldene_khasene \
	goldene_khasene_2 gut_morgn gut_nakht_vals \
	hallelu-kol_haneshama happy_nigun_9_12 hava_nagilah \
	hija_mia_el_adon honga \
	ikh_bin_a_kleyner_dreydl ikh_hob_dikh_tsu_fil_lib itsikel \
	joshua \
	kamariska kandels_hora kazatshok_01 kazatshok_03 \
	keshenever_bulgar khanukah_oy_khanukah kolemeyke_00 \
	kolemeyke_21 koyln \
	la_vida_do_por_el_raki lebedik_un_freylekh lo_yisa_goy \
	mah_tovu mame_hat_mikh_geshikt mame_iz_gegangen_in_mark \
        mayim_mayim mayn_shtetl_yas mazel \
	nakht_in_gan_eydn nigun_2 nigun_halelu nokh_a_bisel \
	nokh_a_glezle_vayn \
	odessa_bulgar_0 odessa_bulgar_3 odesser_bulgar \
	od_lo_ahavti_dai od_yishama or_zarua oyfn_pripetshik oy_tate \
	padespan papirosn polish_polka \
	rumenye rumenye_in_g rumeynisher_hora_13 rumeynisher_hora_16 \
	rumeynisher_hora_un_bulgar russishe_sher_00 russishe_sher_01 \
	russishe_sher_02 russishe_sher_05 russishe_sher_medley \
	sadigerer_khosid sherele_00 sher_khevrisa shiru_lahashem \
	shloymele_malkele \
	shpilt_mir_klezmorimlekh shtiler_bulgar shuster_un_shnayder_tants \
	sids_freylekhs simkhes_toyre skotshne_59 \
	tangissimo terk_in_america tish_nigun trisker_rebns_khosid \
	tsena tum-balalayke \
	ukranian_2 ukranian_4 una_tarde_de_verano una_tarde_de_verano_dm \
	unknown \
	vehaeir_eineinu \
	yiddish_blues yismechu_hashamayim yodukha_rayonai \
	yor_nokh_mayn_khasene \
	zemer_atik zibn_fertsik

 SHTMLS = toc.shtml body.shtml

books:: all tidy
	../scripts/makebooks

all:: toc body

clean::
	$(RM) -rf target

toc:: toc.shtml

toc.shtml:: */*.shtml
	echo '<ul>' > toc.shtml
	(grep -h '<h3>' */*.shtml | sed -e 's@<h3><a name="@    <li class="link">\&nbsp;\&nbsp;\&nbsp;<a href="#@' -e 's@</a>@@g' -e 's@</h3>@</a></li>@') >> toc.shtml
	echo '</ul>' >> toc.shtml

body:: body.shtml

body.shtml::
	grep -l '<h3>' */*.shtml | sed -e 's@shtml@shtml" -->@' -e 's@.*/@<!--# include virtual="@' > body.shtml

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

install:: all books
	$(CP) *.book.pdf $(TARGET)/pdf
