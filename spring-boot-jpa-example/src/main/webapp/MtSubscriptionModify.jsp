
<%@page contentType="text/html"%> 
<%@ page  import="com.polaris.util.Constants,com.polaris.orbionecore.intellect.vo.*,java.util.ArrayList,java.util.HashMap,com.polaris.intellect.mtsubscribe.vo.MtSubscribeVO,com.polaris.orbionecore.common.log.CoreLogger,cwh.messageretriever.*"%> 
<%
	CoreLogger.log("MtSubscriptionModify.jsp");
	String cwhLocale = session.getAttribute("locale").toString(); 
	ArrayList  objAl = (ArrayList)session.getAttribute("ChargesDetails");
    MtSubscribeVO objMtSubscribeVO=(MtSubscribeVO)objAl.get(0);
    String staticPath = null; 
    staticPath = request.getAttribute("STATIC_PATH").toString();
    CoreLogger.log(new StringBuffer("staticPath>>").append(staticPath));
	HashMap hm=new HashMap(); 
	HashMap hn=new HashMap(); 
	String gcif=null; 
    String cif=null; 
    String accountno=null; 
    String mt940_942=null; 
    String fileformat=null; 
    String filetype=null; 
    String ibanreq=null; 
	String ref_61=null;  
	String delchnl=null;
	String eff_date=null; 
	String end_date=null;
	String swift=null;
	String fre_type=null; 
	String hr_time=null;
	String slot_frq=null;
	String val34f=null;
	String val34f_d=null;
	String val34f_c=null;
	String val90_c=null;
	String empty_stmt=null;
	String unitid=null;
	String status=null;
	String maker_id=null;
	String custname=null;
	String makerdate=null;
	String comments=null;
	String ref_no=null;
	String encryption=null;  
	String path=null;
	String key=null;
	String pass=null;
	String dist_path=null;
	String acCcy= null;
	String accName= null;
	String authFlag=null;
    String frequency=null;
    String storeFlag=null;
	

	String gcif2=null; 
    String cif2=null; 
    String accountno2=null; 
    String mt940_9422=null; 
    String fileformat2=null; 
    String filetype2=null; 
    String ibanreq2=null; 
	String ref_612=null;  
	String delchnl2=null;
		String delchnlswift2=null;
	
	String eff_date2=null; 
	String end_date2=null;
	String swift2=null;
	String fre_type2=null; 
	String hr_time2=null;
	String slot_frq2=null;
	String val34f2=null;
	String val34f_d2=null;
	String val34f_c2=null;
	String val90_c2=null;
	String empty_stmt2=null;
	String unitid2=null;
	String status2=null;
	String maker_id2=null;
	String custname2=null;
	String makerdate2=null;
	String comments2=null;
	String ref_no2=null;
	String encryption2=null;  
	String path2=null;
	String key2=null;
	String pass2=null;
	String dist_path2=null;
	String uniquetxt1=null;
	String previewtxt1=null;
	String Accountdetails1=null;
	 String uniquetxt2=null;
	String previewtxt2=null;
	String Accountdetails2=null;
	String slotNo1=null;
	String slotNo2=null;
	String slotNo3=null;
	String encryptionMT940Flg =null;
	String encryptionMT942Flg =null;
	String sftpFileFormat01MT940=null;
	String cbxFileFormat01MT940=null;
	String sftpFileFormat01MT942=null;
	String msgTypeMT940=null;   
	String msgTypeMT942=null;
	String sftpMt940=null;
	String cbxMt940=null;
		String swiftMt940=null;
			String swiftMt942=null;
	
	String sftpMt942=null;
	String generateMT940Stmt=null;
	String field25MT940=null;
	String generateMT942Stmt=null;
	String field25MT942=null;
	String field61MT942=null;
	String field61MT940=null;
	String field90MT942=null;
	String field34MT942=null;
	String delTimeHourBasesMT942=null;
	String delTimeSlotBasesMT942=null;
	String email940=null;
	String email942=null;
	String frequency940=null;
	String timeInterval=null;

		String delchnlcbx1=null;
		String filetypecbx1=null;
		String fileformatcbx1=null;
		String delchnlswift1=null;
		String MT940_DEL_CHNL="";
		String uniquetxtcbx1="";
		String previewtxtcbx1=""; 

	
	hm=objMtSubscribeVO.getHashMap(); 
	CoreLogger.log("hm>>>"+hm);
	hn=objMtSubscribeVO.getHashinMap(); 
	uniquetxt1=(String)hm.get("uniquetxt1");
    previewtxt1=(String)hm.get("previewtxt1"); 
	Accountdetails1=(String)hm.get("Accountdetails1"); 
	uniquetxt2=(String)hn.get("uniquetxt2"); 
    previewtxt2=(String)hn.get("previewtxt2"); 
	Accountdetails2=(String)hn.get("Accountdetails"); 	
	if(uniquetxt1==null){ 
		uniquetxt1="";
	}
	if(previewtxt1==null){ 
		previewtxt1="";
	}
	if(uniquetxt2==null){ 
		uniquetxt2="";
	}
	if(previewtxt2==null){ 
		previewtxt2="";
	}
	comments=(String)hm.get("comment1"); 
    maker_id=(String)hm.get("maker_id1"); 
	gcif=(String)hm.get("gcif"); 
	cif=(String)hm.get("cif");   
	accountno=(String)hm.get("accountno"); 
	mt940_942=(String)hm.get("mt940"); 
	fileformat=(String)hm.get("fileformat1"); 
	filetype=(String)hm.get("filetype1");
	filetypecbx1=(String)hm.get("filetypecbx1");
	previewtxtcbx1=(String)hm.get("previewtxtcbx1");
	uniquetxtcbx1=(String)hm.get("uniquetxtcbx1");
	fileformatcbx1=(String)hm.get("fileformatcbx1");
	ibanreq=(String)hm.get("ibanreq1");
	ref_61=(String)hm.get("ref_611");
	delchnl=(String)hm.get("delchnl1");
delchnlcbx1=(String)hm.get("delchnlcbx1");
	eff_date=(String)hm.get("eff_date1");
delchnlswift1=(String)hm.get("delchnlswift1");
	end_date=(String)hm.get("end_date1");//FIXD_AMT

	swift=(String)hm.get("swift1");

	fre_type=(String)hm.get("fre_type1");

	hr_time=(String)hm.get("hr_time1");

	authFlag=(String)hm.get("auth_flag");

	slot_frq=(String)hm.get("slot_frq1");
	
	val34f=(String)hm.get("val34f1"); 
    val34f_d=(String)hm.get("val34f_d1"); 
    val34f_c=(String)hm.get("val34f_c1"); 
    val90_c=(String)hm.get("val90_c1"); 

    empty_stmt=(String)hm.get("empty_stmt1");

	unitid=(String)hm.get("unitid1");

	status=(String)hm.get("status1");

	custname=(String)hm.get("custname");
     CoreLogger.log("custname hm>>>"+custname);
	makerdate=(String)hm.get("makerdate1");

	ref_no=(String)hm.get("ref_no");//FIXD_AMT

	encryption=(String)hm.get("encryption1");

	path=(String)hm.get("path1");

	key=(String)hm.get("key1");

	pass=(String)hm.get("pass1");
    dist_path=(String)hm.get("dist_path1");
	accName=(String)hm.get("accName");
	acCcy=(String)hm.get("acCcy");
	email940=(String)hm.get("email940");
	frequency940=(String)hm.get("frequency940");
	timeInterval=(String)hm.get("timeInterval");
	comments2=(String)hn.get("comment2"); 
    maker_id2=(String)hn.get("maker_id2"); 
	gcif2=(String)hn.get("gcif"); 

    cif2=(String)hn.get("cif"); 
    accountno2=(String)hn.get("accountno"); 
    mt940_9422=(String)hn.get("mt942"); 
    fileformat2=(String)hn.get("fileformat2"); 
	email942=(String)hn.get("email942");
    filetype2=(String)hn.get("filetype2");

	ibanreq2=(String)hn.get("ibanreq2");

	ref_612=(String)hn.get("ref_612");

	delchnl2=(String)hn.get("delchnl2");
delchnlswift2=(String)hn.get("delchnlswift2");
	eff_date2=(String)hn.get("eff_date2");

	end_date2=(String)hn.get("end_date2");//FIXD_AMT

	swift2=(String)hn.get("swift2");

	fre_type2=(String)hn.get("fre_type2");

	hr_time2=(String)hn.get("hr_time2");
	slot_frq2=(String)hn.get("slot_frq2");
	val34f2=(String)hn.get("val34f2"); 
    val34f_d2=(String)hn.get("val34f_d2"); 
    val34f_c2=(String)hn.get("val34f_c2"); 
    val90_c2=(String)hn.get("val90_c2"); 
	

    empty_stmt2=(String)hn.get("empty_stmt2");

	unitid2=(String)hn.get("unitid2");

	status2=(String)hn.get("status2");

	custname2=(String)hn.get("custname");

	makerdate2=(String)hn.get("makerdate2");

	ref_no2=(String)hn.get("ref_no2");//FIXD_AMT

	encryption2=(String)hn.get("encryption2");

	path2=(String)hn.get("path2");

	key2=(String)hn.get("key2");

	pass2=(String)hn.get("pass2");
    dist_path2=(String)hn.get("dist_path2");
	slotNo1=(String)hn.get("slotNo1");
	slotNo2=(String)hn.get("slotNo2");
	slotNo3=(String)hn.get("slotNo3");
	email942=(String)hn.get("email942");
	MT940_DEL_CHNL=(String)hm.get("MT940_DEL_CHNL");
	
	CoreLogger.log("MT940_DEL_CHNL :: "+MT940_DEL_CHNL);
	if(MT940_DEL_CHNL.toUpperCase().contains("SWIFT")){
	delchnlswift1="SWIFT";
	}
	
	if(previewtxtcbx1==null || "".equals(previewtxtcbx1) || "null".equals(previewtxtcbx1)){ 
		previewtxtcbx1="";
	}
	if(filetype==null || "".equals(filetype) || "null".equals(filetype)){ 
		filetype="";
	}
	if(filetypecbx1==null || "".equals(filetypecbx1) || "null".equals(filetypecbx1)){ 
		filetypecbx1="";
	}
	
	if(fileformatcbx1==null || "".equals(fileformatcbx1) || "null".equals(fileformatcbx1)){ 
		fileformatcbx1="";
	}
	
	if(uniquetxtcbx1==null || "".equals(uniquetxtcbx1) || "null".equals(uniquetxtcbx1)){ 
		uniquetxtcbx1="";
	}
	
	
	if(mt940_942==null || "".equals(mt940_942) || "null".equals(mt940_942)){ 
		mt940_942="";
	}
	if(uniquetxt2==null || "".equals(uniquetxt2) || "null".equals(uniquetxt2)){ 
			uniquetxt2="";
	}
	if(uniquetxt1==null || "".equals(uniquetxt1) || "null".equals(uniquetxt1)){  
		uniquetxt1="";
	}
	if(previewtxt2==null || "".equals(previewtxt2) || "null".equals(previewtxt2)){  
			previewtxt2="";
	}
	if(previewtxt1==null || "".equals(previewtxt1) || "null".equals(previewtxt1)){
		previewtxt1="";
	}
	if(val34f_c2==null || "".equals(val34f_c2) || "null".equals(val34f_c2)){
		val34f_c2="0";
	}
	if(val34f_d2==null || "".equals(val34f_d2) || "null".equals(val34f_d2)){
		val34f_d2="0";
	}
	if(key==null || "".equals(key) || "null".equals(key)){
		key="";
	}
 
	if(key2==null || "".equals(key2) || "null".equals(key2) ){ 

	key2="";
	}

	if(fileformat2==null || "".equals(fileformat2) || "null".equals(fileformat2) ){ 

		fileformat2="";
	}
	if(fileformat==null || "".equals(fileformat) || "null".equals(fileformat) ){ 
		fileformat="";
	}
	if(comments2==null || "".equals(comments2) || "null".equals(comments2) ){ 
		comments2="";
	}
	if(comments==null || "".equals(comments) || "null".equals(comments) ){ 
		comments="";
	}
	if(maker_id2==null || "".equals(maker_id2) || "null".equals(maker_id2) ){ 
		maker_id2="";
	}
	if(gcif2==null || "".equals(gcif2) || "null".equals(gcif2) ){ 
		gcif2="";
	}
	if(cif2==null || "".equals(cif2) || "null".equals(cif2) ){ 
		cif2="";
	}
	if(accountno2==null || "".equals(accountno2) || "null".equals(accountno2) ){ 
		accountno2="";
	}
	if(accountno==null || "".equals(accountno) || "null".equals(accountno) ){ 
		accountno="";
	}
	if(mt940_9422==null || "".equals(mt940_9422) || "null".equals(mt940_9422) ){ 
		mt940_9422="";
	}
	if(filetype2==null || "".equals(filetype2) || "null".equals(filetype2) ){ 
		filetype2="";
	}
	if(delchnl2==null || "".equals(delchnl2) || "null".equals(delchnl2) || "undefined".equals(delchnl2) ){ 
		delchnl2="";
	}
	if(delchnl==null || "".equals(delchnl) || "null".equals(delchnl) || "undefined".equals(delchnl) ){ 
		delchnl="";
	}
	if(delchnlcbx1==null || "".equals(delchnlcbx1) || "null".equals(delchnlcbx1) || "undefined".equals(delchnlcbx1) ){ 
		delchnlcbx1="";
	}
	
	if(delchnlswift1==null || "".equals(delchnlswift1) || "null".equals(delchnlswift1) || "undefined".equals(delchnlswift1) ){ 
		delchnlswift1="";
	}
	
	if(delchnlswift2==null || "".equals(delchnlswift2) || "null".equals(delchnlswift2) || "undefined".equals(delchnlswift2) ){ 
		delchnlswift2="";
	}
	
	
	if(eff_date2==null || "".equals(eff_date2) || "null".equals(eff_date2) ){ 
		eff_date2="";
	}
	if(end_date2==null || "".equals(end_date2) || "null".equals(end_date2) ){ 
		end_date2="";
	}
	if(eff_date==null || "".equals(eff_date) || "null".equals(eff_date) ){ 
		eff_date="";
	}
	if(end_date==null || "".equals(end_date) || "null".equals(end_date) ){ 
		end_date="";
	}
	if(swift2==null || "".equals(swift2) || "null".equals(swift2) ){ 
		swift2="";
	}
	if(swift==null || "".equals(swift) || "null".equals(swift) ){ 
		swift="";
	}
	if(slot_frq2==null || "".equals(slot_frq2) || "null".equals(slot_frq2) ){ 

	slot_frq2="";
	}
	if(val34f_d2==null || "".equals(val34f_d2) || "null".equals(val34f_d2) ){ 
		val34f_d2="";
	}
	if(unitid2==null || "".equals(unitid2) || "null".equals(unitid2) ){ 
		unitid2="";
	}
	if(custname2==null || "".equals(custname2) || "null".equals(custname2) ){ 
		custname2="";
	}
	if(makerdate2==null || "".equals(makerdate2) || "null".equals(makerdate2) ){ 
		makerdate2="";
	}
	if(ref_no2==null && "".equals(ref_no2) && "null".equals(ref_no2) ){ 
		ref_no2="";
	}
	if(encryption==null || "".equals(encryption) || "null".equals(encryption) ){ 
		encryption="";
	}
	if(path==null || "".equals(path) || "null".equals(path) ){ 
		path="";
	}
	if(encryption2==null || "".equals(encryption2) || "null".equals(encryption2) ){ 
		encryption2="";
	}
	if(path2==null || "".equals(path2) || "null".equals(path2) ){ 
		path2="";
	}
	if(pass2==null || "".equals(pass2) || "null".equals(pass2) ){ 
		pass2="";
	}
	if(dist_path2==null || "".equals(dist_path2) || "null".equals(dist_path2) ){ 
		dist_path2="";
}


if(hr_time==null || "".equals(hr_time) || "null".equals(hr_time) ){ 


	hr_time="";
}
if(slot_frq==null || "".equals(slot_frq) || "null".equals(slot_frq) ){ 


	slot_frq="";
}

if(val34f==null || "".equals(val34f) || "null".equals(val34f) ){ 


	val34f="";
}
if(val34f_d==null || "".equals(val34f_d) || "null".equals(val34f_d) ){ 


	val34f_d="0";
}
if(val34f_c==null || "".equals(val34f_c) || "null".equals(val34f_c) ){ 


	val34f_c="0";
}
if(val90_c==null || "".equals(val90_c) || "null".equals(val90_c) ){ 


	val90_c="";
}


if(unitid==null || "".equals(unitid) || "null".equals(unitid) ){ 

  unitid=unitid2;
}
if(custname==null || "".equals(custname) || "null".equals(custname) ){ 

 custname="";
}
if(makerdate==null || "".equals(makerdate) || "null".equals(makerdate) ){ 


	makerdate="";
}

if(ref_no==null || "".equals(ref_no) || "null".equals(ref_no) ){ 


	ref_no="";
}
if(encryption==null || "".equals(encryption) || "null".equals(encryption) ){ 


	encryption="";
}
if(path==null || "".equals(path) || "null".equals(path) ){ 


	path="";
}


if(key==null || "".equals(key) || "null".equals(key) ){ 

   key="";
}
if(pass==null || "".equals(pass) || "null".equals(pass) ){ 

   pass="";
}
if(dist_path==null || "".equals(dist_path) || "null".equals(dist_path) ){ 

	dist_path="";
}
if(accName==null || "".equals(accName) || "null".equals(accName) ){ 

   accName="";
}
if(acCcy==null || "".equals(acCcy) || "null".equals(acCcy) ){ 

   acCcy="";
}
if(maker_id==null || "".equals(maker_id) || "null".equals(maker_id) ){ 

	maker_id="";
}
if(gcif==null || "".equals(gcif) || "null".equals(gcif) ){ 

   gcif="";
}
if(cif==null || "".equals(cif) || "null".equals(cif) ){ 

cif	=(String)hn.get("cif"); 
}	

	if(path==null){ 
		path="";
	}
	if(path2==null){ 
		path2="";
	}
	if(key==null){ 

			key="";
}
	
	if(key2==null){ 

			key2="";
}
	
	if(val34f_d2==null){ 

			val34f_d2="";
}
	
	if(val34f_c2==null){ 

			val34f_c2="";
}

	if(slotNo1==null){ 

			slotNo1="";
}

if(slotNo2==null){ 

			slotNo2="";
}

if(slotNo3==null){ 

			slotNo3="";
}	
	CoreLogger.log("status"+status);
	CoreLogger.log("status2"+status2);
	CoreLogger.log("cif"+cif);
	CoreLogger.log("cif2"+cif);
	if(authFlag!=null && authFlag.intern()=="Y".intern()){
		if(status!=null && status.intern()=="D".intern())
			storeFlag="D";
		else if(status!=null && status.intern()=="B".intern()){
			storeFlag="B";
			CoreLogger.log("storeFlag");
		}
		else if(status!=null && status.intern()=="M".intern())
			storeFlag="M";	
		else
			CoreLogger.log("No Proper Inputs");
	}
	CoreLogger.log("authFlag"+authFlag);
	CoreLogger.log("storeFlag"+storeFlag);
	
	CoreLogger.log("mt940_9422"+mt940_9422);
	CoreLogger.log("val34f_d2>>>"+val34f_d2);
	CoreLogger.log("val34f_c2>>>"+val34f_c2);
	String name="";
	name="MT_SUB_MODIFY_DETAILS";
%>
<html>
<head>
<style>
	#tbldata{border: 1px solid gray;}
	#tbldata th{border-bottom:1px solid gray;border-right:1px solid gray;}
	#tbldata td{border-bottom:1px solid gray;border-right:1px solid gray;padding-left : 4px}	td.button1{background:url('/corebank/workflow/Search/jquery/images/listheadergrad.gif');background-repeat: repeat-x;border:2px solid #99BFE3;color: black;width: 90px;height: 20px;font-size: 11px;font-weight: bold;padding-left:2px;vertical-align: middle;cursor: hand;}
	td.button1 input{color: white;}
	td.button1-hover{background:url('/corebank/workflow/Search/jquery/images/gradient_yellow22.jpg');color:black;brder:2px solid #99BFE3;width: 90px;height: 20px;font-size: 11px;font-weight: bold;cursor: hand;padding-left:2px;}
	.ez23{font-family: MS Sans Serif, Arial, Helvetica;font-size: 14px;background:#F2F5Fa;color:#000000;font-weight: normal;}
	.ez22{font-family:MS Sans Serif,Arial;background:#E8F4FF;height:auto;font-size:12px;color:000090;}
	.yes{float:center; margin-left:170px; width:70px; height:auto; color:#666; font-weight:bold;text-align:center;background:url('/corebank/workflow/Search/jquery/images/Confirmbutton.gif') repeat-x; border:1px solid #bbb; cursor:hand;}
	.no{float:center; margin-left:170px; width:70px; height:auto; color:#666; font-weight:bold;text-align:center;background:url('/corebank/workflow/Search/jquery/images/Confirmbutton.gif') repeat-x; border:1px solid #bbb; cursor:hand;}
</style>
<link type="text/css"  href="/corebank/workflow/Search/jquery/css/jquery.ui.combogrid.css" rel="stylesheet" />
<jsp:include page="IwJQuery-common.jsp"/>
<jsp:include page="IwJQueryUI-common.jsp"/>
<script type="text/javascript" src="/corebank/workflow/Search/jquery/js/jquery.ui.combogrid-1.6.1.js"></script>
<SCRIPT TYPE="TEXT/JAVASCRIPT" LANGUAGE="JAVASCRIPT">

var hours_array = ["00","01", "02", "03","04","05", "06", "07","08","09", "10", "11","12","13", "14", "15","16", "17", "18","19","20", "21", "22","23"];
var tag20_Sequence ="$$Sequence";
var alertMessage="";
var responseBiclist;
var responseBiclistMt942;
 var js_val34f_d2='<%=val34f_d2%>';
 //alert(val34f_d2);
$(document).ready(function() {
					     $( "#tabs" ).tabs();
				        $('#loading_search_gif1').hide();
				        $('#loading_search_gif2').hide();
				        $('#successShow').hide();
						$('#minMaxDiv').hide();
				        $('#successShow1').hide();
						
			       
					    	 
					    	$("#glAcc").click(function(){
									$(this).css("width","auto");
							});
							$("#glAcc").bind("blur change", function(){						
								$(this).css("width","160px");
							});
							var myDate = new Date();
    
    var dates = $( "#searchCrit4, #searchCrit5" ).datepicker({
		buttonText: 'Calendar',inline:true,showMonthAfterYear: false,changeYear: true, dateFormat: 'dd-mm-yy',yearRange: '2021:2050',minDate: myDate,buttonImage: './corebank/workflow/Search/jquery/images/date.gif',showOn: 'button',buttonImageOnly: true,
		onSelect: function( selectedDate ) {
		       var option = this.id == "searchCrit4" ? "minDate" : "maxDate",
				instance = $( this ).data( "datepicker" ),
				date = $.datepicker.parseDate(
				instance.settings.dateFormat ||
				$.datepicker._defaults.dateFormat,
				selectedDate, instance.settings );
			   dates.not( this ).datepicker( "option", option, date );
		}
	});
	
	 var dates1 = $( "#searchCrit6, #searchCrit7" ).datepicker({
		buttonText: 'Calendar',inline:true,showMonthAfterYear: false,changeYear: true, dateFormat: 'dd-mm-yy',yearRange: '2021:2050',minDate: myDate,buttonImage: './corebank/workflow/Search/jquery/images/date.gif',showOn: 'button',buttonImageOnly: true,
		onSelect: function( selectedDate ) {
		       var option = this.id == "searchCrit6" ? "minDate" : "maxDate",
				instance = $( this ).data( "datepicker" ),
				date = $.datepicker.parseDate(
				instance.settings.dateFormat ||
				$.datepicker._defaults.dateFormat,
				selectedDate, instance.settings );
			   dates1.not( this ).datepicker( "option", option, date );
		}
	});
    			
		});
		
function Close(){
	jQuery.call_back = function ()
	{
		pageClose();
	}
	JConfirmPopup("<%=MessageRetriever.getMessage("Do_you_want_to_close",cwhLocale,1)%>",jQuery.call_back);
}
function checkServiceValid(service)
{
		var alpha = 'abcdefghijklmnopqruvwxyz';
		var str = service.value.toLowerCase();
		
			for(var i=0; i < str.length; i++){
				if(alpha.indexOf(str.charAt(i))!=-1) {
					//alert("Please Enter Valid Service Tier");
					//alert("Please Enter Valid Service Tier Or Customer Id Or Account No");
					document.getElementById("serviceTireCust").value="";
					return false;
				}
			}
				
	 }
function pageClose()
{
	location.href='Gateway?orbi_id=CH00040&FetchData=N';
}
function modificationCall()
{  
	//alert("modificationCal");
    //getHolders();
	//getCBXHolders();
	//alert(val34f_d2);
	//alert("modificationCall1>>");
	var delchnl2="<%=delchnl2%>";
	var previewtxt2='<%=previewtxt2%>';
    var uniquetxt2='<%=uniquetxt2%>';
	var mt940_9422="<%=mt940_9422%>";
	var ibanreq2="<%=ibanreq2%>";
	var val90_c2="<%=val90_c2%>";
	var val34f2="<%=val34f2%>";
	var fre_type2="<%=fre_type2%>";
	var cif="<%=cif%>";

	var cif2="<%=cif2%>";
	var custname2="<%=custname2%>";
	var custname="<%=custname%>";
		var ref_612="<%=ref_612%>";
	var empty_stmt2="<%=empty_stmt2%>";
	var filetype2="<%=filetype2%>";
		var encryption2="<%=encryption2%>";
		var email940="<%=email940%>";
		var email942="<%=email942%>";
		var frequency940="<%=frequency940%>";
		var timeInterval="<%=timeInterval%>";
			//alert("delchnl2>>"+delchnl2);
	if(delchnl2=="SFTP")
{
	//alert("delchnl2ii>>"+delchnl2);

	getHolders2();
	document.getElementById("purtransfer_flg2").checked=true;
	
	if(document.myForm.purtransfer_flg2.checked==true)
	{
	document.myForm.purtransfer_flg02.value="Y";
	
	}
   else
	{
	document.myForm.purtransfer_flg02.value="N";
	}
	
	if(document.myForm.purtransfer_flg02.value == 'Y')
	{
		 sftpMt942 ="SFTP";
	}

	document.getElementById("line06").value="<%=uniquetxt2%>";	  
	
		document.getElementById("line07").value="<%=previewtxt2%>";	
}

if(mt940_9422=="MT942")
{
	
	document.getElementById("amtbased_flg2").checked=true;
	
	if(document.myForm.amtbased_flg2.checked==true)
	{
	document.myForm.amtbased_flg_MT942.value="Y";
	
	}
   else
	{
	document.myForm.amtbased_flg_MT942.value="N";
	}
	if(document.myForm.amtbased_flg_MT942.value == 'Y')
	{
		 msgTypeMT942 ="MT942";
	}
	
}

if(ibanreq2=="Y")
	{
		//alert(ibanreq2);
		document.getElementById("fieldIban2").checked=true;
	
	if(document.getElementById("fieldIban2").checked){
			document.myForm.chk2Fld25.value="Y";
		}
		
		 field25MT942 = document.myForm.chk2Fld25.value;
	} 
	if(ibanreq2=="N")
	{
		document.getElementById("fieldAcc2").checked=true;
	
		if(document.getElementById("fieldAcc2").checked){
			document.myForm.chk2Fld25.value="N";
		}
		field25MT942 = document.myForm.chk2Fld25.value;
	}  
	
	if(val90_c2=="Y")
{
	
	document.getElementById("chk2Fld90Yes").checked=true;
	
	 if(document.getElementById("chk2Fld90Yes").checked){
			document.myForm.chk2Fld90.value="Y";
		}
	 field90MT942=document.myForm.chk2Fld90.value;
} 

	 if(val90_c2=="N")
{
	
	document.getElementById("chk2Fld90No").checked=true;
	 if(document.getElementById("chk2Fld90No").checked){
			document.myForm.chk2Fld90.value="N";
		}
			 field90MT942=document.myForm.chk2Fld90.value;

}

	 if(val34f2=="S")
{
	
	document.getElementById("fieldSingle").checked=true;
	
	if(document.getElementById("fieldSingle").checked){
			document.myForm.cntWvrFlgSingle.value="Y";
		
	}
	
		 field34MT942 ="S";
		
	
} 

	 if(val34f2=="B")
{
	
	document.getElementById("fieldBoth").checked=true;
	if(document.getElementById("fieldBoth").checked){
			document.myForm.cntWvrFlgSingle.value="N";
		
	}
	
		 field34MT942 ="B";
	
}   

	 if(fre_type2=="H")
{
	document.getElementById("deltimehour").checked=true;
	if(document.myForm.deltimeflghourval.checked==true)
	{
	document.myForm.deltimehrflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimehrflg.value="N";
	}
	
	if(document.myForm.deltimehrflg.value == 'Y')
	{
		 delTimeHourBasesMT942 ="H";
	}
	
	if(document.myForm.deltimehrflg.value == 'N')
	{
		 delTimeHourBasesMT942 ="S";
	}
	
	
} 

	 if(fre_type2=="S")
{
	document.getElementById("deltimeslot").checked=true;
	if(document.myForm.deltimeflgslotval.checked==true)
	{
	document.myForm.deltimeslotflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimeslotflg.value="N";
	}
	
	if(document.myForm.deltimeslotflg.value == 'Y')
	{
		 delTimeSlotBasesMT942 ="Y";
	}
	
	if(document.myForm.deltimeslotflg.value == 'N')
	{
		 delTimeSlotBasesMT942 ="N";
	}
	
	 
}  

document.getElementById("MtDel_Time").value="<%=hr_time2%>";  
if(fre_type2=="S")
{

   
	document.getElementById("FIRST_SLOT_HOUR_TIME").value="<%=slotNo1%>";
	document.getElementById("SECOND_SLOT_HOUR_TIME").value="<%=slotNo2%>";
	document.getElementById("THIRD_SLOT_HOUR_TIME").value="<%=slotNo3%>";
    
}  
document.getElementById("Nar_CIF").value="<%=cif2%>";           
	//document.getElementById("cust_name").value="<%=custname2%>";
	//document.getElementById("Account_detail").value="<%=accountno%>";
	document.getElementById("floorDebit").value="<%=val34f_d2%>"; 
	document.getElementById("floorCredit").value="<%=val34f_c2%>";
	
	
	if(ref_612=="Y")
	{
	
		document.getElementById("chk2Fld61Yes").checked=true;
		if(document.getElementById("chk2Fld61Yes").checked){
			document.myForm.chk2Fld61.value="Y";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	} 
	 if(ref_612=="N")
	{
	
		document.getElementById("chk2Fld61No").checked=true;
	 if(document.getElementById("chk2Fld61No").checked)
	{
			document.myForm.chk2Fld61.value="N";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	}  

	 if(empty_stmt2=="Y")
{
	//alert(empty_stmt2);
	document.getElementById("chkZero2Yes").checked=true;
	
	if(document.getElementById("chkZero2Yes").checked){
			document.myForm.chkZero2.value="Y";
		}
		
		 generateMT942Stmt=document.myForm.chkZero2.value;
	
	} 

	 if(empty_stmt2=="N")
	{
		//alert(empty_stmt2);

	document.getElementById("chkZero2No").checked=true;
	
	if(document.getElementById("chkZero2No").checked){
			document.myForm.chkZero2.value="N";
		}
				 generateMT942Stmt=document.myForm.chkZero2.value;

} 


if(delchnl2=="SFTP")
	
{
	//alert("delchnl233>>"+delchnl2);
	document.getElementById("line06").value="<%=uniquetxt2%>";	  
	
		document.getElementById("line07").value="<%=previewtxt2%>";	


	//alert("delchnl23553>>"+delchnl2);
	//alert("filetype2>>"+filetype2);
	
if(filetype2==".xls")
{
	
	document.getElementById("file2format1").checked=true;
}
 if(filetype2==".xlsx")
{
	
	document.getElementById("file2format2").checked=true;
}

  if(filetype2==".csv")
{
	
	document.getElementById("file2format3").checked=true;
}

 if(filetype2==".txt")
{
	
	document.getElementById("file2format4").checked=true;
}

  if(document.myForm.file2formatflg1.checked==true)  
	{
	document.myForm.filefrmtflg01.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg01.value="N";
	}
	
	if(document.myForm.filefrmtflg01.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xls";
	}
	if(document.myForm.file2formatflg2.checked==true)
	{
	document.myForm.filefrmtflg02.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg02.value="N";
	}
	if(document.myForm.filefrmtflg02.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xlsx";
	}
	
	if(document.myForm.file2formatflg3.checked==true)
	{
	document.myForm.filefrmtflg03.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg03.value="N";
	}
	if(document.myForm.filefrmtflg03.value == 'Y')
	{
		 sftpFileFormat01MT942 =".csv";
	}
	
	if(document.myForm.file2formatflg4.checked==true)
	{
	document.myForm.filefrmtflg04.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg04.value="N";
	}
	
	if(document.myForm.filefrmtflg04.value == 'Y')
	{
		 sftpFileFormat01MT942 =".txt";
	}		

} 
document.getElementById("line05").value="<%=path2%>";
if(encryption2=="YES")
{
	
	document.getElementById("chkChgPosReq2Yes").checked=true;
}
else {
	document.getElementById("chkChgPosReq2No").checked=true;
}

if(document.getElementById("chkChgPosReq2Yes").checked){
			document.myForm.chkChgPosReq2.value="Y";
		}else{
			document.myForm.chkChgPosReq2.value="N";
		}

		
		if(document.myForm.chkChgPosReq2.value == 'Y')
	{
		 encryptionMT942Flg ="YES";
		 //alert(encryptionMT940Flg);
	}
else{
			
			 encryptionMT942Flg ="NO";
		} 
if(frequency940=="W"){
	document.getElementById("weeklyFrq").checked=true;
}else{
	document.getElementById("monthlyFrq").checked=true;
}
		
if(document.getElementById("weeklyFrq").checked){
	document.myForm.freqFlag.value="W";
}else{
	document.myForm.freqFlag.value="M";
}

if(document.getElementById("defaultTime").checked){
	var timeInterval ="D-"+document.getElementById("deftime").value;
}else{
	var timeInterval ="C-"+document.getElementById("custtime").value;	
}

	document.getElementById("searchCrit6").value="<%=eff_date2%>";
	
	 document.getElementById("searchCrit7").value="<%=end_date2%>";
	getHolders2(); 
	getAccountDetails();
	getExistingAccDetails();
        getExistingBicDetails();
	var unitID="<%=unitid%>";
	var mt940_942="<%=mt940_942%>";
	var mt940_9422="<%=mt940_9422%>";
	var delchnl="<%=delchnl%>";
	var delchnlcbx1="<%=delchnlcbx1%>";
	var delchnlswift1="<%=delchnlswift1%>";
	
	var delchnlswift2="<%=delchnlswift2%>";
	
	var delchnl2="<%=delchnl2%>";
	var encryption="<%=encryption%>";
	var encryption2="<%=encryption2%>";
	var filetype="<%=filetype%>";
	var filetypecbx1="<%=filetypecbx1%>";
	var cif="<%=cif%>";
	
	var filetype2="<%=filetype2%>";
	var ibanreq2="<%=ibanreq2%>";
	var ref_61="<%=ref_61%>";
	var fre_type2="<%=fre_type2%>";
	var ref_612="<%=ref_612%>";
	var ibanreq="<%=ibanreq%>";
	var empty_stmt2="<%=empty_stmt2%>";
	var empty_stmt="<%=empty_stmt%>";
	var val90_c2="<%=val90_c2%>";
	var val34f2="<%=val34f2%>";
	//alert("modificationCall 2>>");
	var ttta="<%=path%>";
	var eff_date='<%=eff_date%>';
	var end_date='<%=end_date%>';
	var eff_date2='<%=eff_date2%>';
	var end_date2='<%=end_date2%>';
		var fileformatcbx1='<%=fileformatcbx1%>';
var fileformat='<%=fileformat%>';
var fileformat2='<%=fileformat2%>';
var uniquetxt1='<%=uniquetxt1%>';
var previewtxt1='<%=previewtxt1%>';
var previewtxt2='<%=previewtxt2%>';
var uniquetxt2='<%=uniquetxt2%>';
var uniquetxtcbx1='<%=uniquetxtcbx1%>';
var previewtxtcbx1='<%=previewtxtcbx1%>';
var email940='<%=email940%>';
var email942='<%=email942%>';
var frequency940='<%=frequency940%>';
 
document.getElementById("line03").value="<%=uniquetxtcbx1%>";	  

		document.getElementById("line04").value="<%=previewtxtcbx1%>";	

     document.getElementById("email").value="<%=email940%>";
     document.getElementById("email1").value="<%=email942%>";
     document.myForm.freqFlag.value="<%=frequency940%>";
		//	alert("previewtxt1>>"+previewtxt1);
		//alert("fileformatcbx1>>"+fileformatcbx1);	
		 document.getElementById("line3").value="<%=previewtxt1%>";
		  document.getElementById("line02").value="<%=uniquetxt1%>";
		  
		   document.getElementById("line07").value="<%=previewtxt2%>";
		  document.getElementById("line06").value="<%=uniquetxt2%>";
		  
		    
	 document.getElementById("searchCrit4").value="<%=eff_date%>";
	
	 document.getElementById("searchCrit5").value="<%=end_date%>";
	 
	 document.getElementById("searchCrit6").value="<%=eff_date2%>";
	
	 document.getElementById("searchCrit7").value="<%=end_date2%>";
	  //document.getElementById("placeTextCbx").value="<%=fileformatcbx1%>";
	 document.myForm.placeText.value='<%=fileformat%>';	
	  document.myForm.placeTextCbx.value='<%=fileformatcbx1%>';	
	 	 document.myForm.placeText2.value='<%=fileformat2%>';

if(ibanreq2=="Y")
	{
		//alert(ibanreq2);
		document.getElementById("fieldIban2").checked=true;
	
	if(document.getElementById("fieldIban2").checked){
			document.myForm.chk2Fld25.value="Y";
		}
		
		 field25MT942 = document.myForm.chk2Fld25.value;
	} 
	if(ibanreq2=="N")
	{
		document.getElementById("fieldAcc2").checked=true;
	
		if(document.getElementById("fieldAcc2").checked){
			document.myForm.chk2Fld25.value="N";
		}
		field25MT942 = document.myForm.chk2Fld25.value;
	}  
	 
	
	 if(ibanreq=="Y")
	{
		//alert("ibanreq1233>>"+ibanreq);
		
		document.getElementById("fieldIban").checked=true;
		if(document.getElementById("fieldIban").checked)
		{
			document.myForm.chkFld25.value="Y";
		}
		 field25MT940 =document.myForm.chkFld25.value;	
	
	
	} 
	if(ibanreq=="N")
	{
		document.getElementById("fieldAcc").checked=true;
		if(document.getElementById("fieldAcc").checked)
		{
		document.myForm.chkFld25.value="N";
		}
		field25MT940 =document.myForm.chkFld25.value;	

	} 
	
	if(empty_stmt=="Y")
{
	//alert(empty_stmt);
	document.getElementById("chkZeroYes").checked=true;
	
	if(document.getElementById("chkZeroYes").checked){
			document.myForm.chkZero.value="Y";
		}

		  generateMT940Stmt=document.myForm.chkZero.value;
	
		
	
} 

	 if(empty_stmt=="N")
{
	//alert(empty_stmt);
	document.getElementById("chkZeroNo").checked=true;
	
	if(document.getElementById("chkZeroNo").checked){
			
			document.myForm.chkZero.value="N";
		}
		
		 generateMT940Stmt=document.myForm.chkZero.value;
}  

 if(val90_c2=="Y")
{
	
	document.getElementById("chk2Fld90Yes").checked=true;
	
	 if(document.getElementById("chk2Fld90Yes").checked){
			document.myForm.chk2Fld90.value="Y";
		}
	 field90MT942=document.myForm.chk2Fld90.value;
} 

	 if(val90_c2=="N")
{
	
	document.getElementById("chk2Fld90No").checked=true;
	 if(document.getElementById("chk2Fld90No").checked){
			document.myForm.chk2Fld90.value="N";
		}
			 field90MT942=document.myForm.chk2Fld90.value;

}   

	 if(val34f2=="S")
{
	
	document.getElementById("fieldSingle").checked=true;
	
	if(document.getElementById("fieldSingle").checked){
			document.myForm.cntWvrFlgSingle.value="Y";
		
	}
	
		 field34MT942 ="S";
		
	
} 

	 if(val34f2=="B")
{
	
	document.getElementById("fieldBoth").checked=true;
	if(document.getElementById("fieldBoth").checked){
			document.myForm.cntWvrFlgSingle.value="N";
		
	}
	
		 field34MT942 ="B";
	
}  

	 if(fre_type2=="H")
{
	document.getElementById("deltimehour").checked=true;
	if(document.myForm.deltimeflghourval.checked==true)
	{
	document.myForm.deltimehrflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimehrflg.value="N";
	}
	
	if(document.myForm.deltimehrflg.value == 'Y')
	{
		 delTimeHourBasesMT942 ="H";
	}
	
	if(document.myForm.deltimehrflg.value == 'N')
	{
		 delTimeHourBasesMT942 ="S";
	}
	
	
} 

	 if(fre_type2=="S")
{
	document.getElementById("deltimeslot").checked=true;
	if(document.myForm.deltimeflgslotval.checked==true)
	{
	document.myForm.deltimeslotflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimeslotflg.value="N";
	}
	
	if(document.myForm.deltimeslotflg.value == 'Y')
	{
		 delTimeSlotBasesMT942 ="Y";
	}
	
	if(document.myForm.deltimeslotflg.value == 'N')
	{
		 delTimeSlotBasesMT942 ="N";
	}
	
	 
}  

document.getElementById("MtDel_Time").value="<%=hr_time2%>";  
if(fre_type2=="S")
{

   
	document.getElementById("FIRST_SLOT_HOUR_TIME").value="<%=slotNo1%>";
	document.getElementById("SECOND_SLOT_HOUR_TIME").value="<%=slotNo2%>";
	document.getElementById("THIRD_SLOT_HOUR_TIME").value="<%=slotNo3%>";
    
}
	document.getElementById("Nar_CIF").value="<%=cif%>";  
	//commented by Suganya on 01/12/20210 for CS0084608- HPQC: 4356  issue 
	//document.getElementById("cust_name").value="<%=custname%>";
	//document.getElementById("Account_detail").value="<%=accountno%>";
	document.getElementById("cust_name").value="<%=custname2%>";

	document.getElementById("floorDebit").value="<%=val34f_d2%>"; 
	document.getElementById("floorCredit").value="<%=val34f_c2%>";
	document.getElementById("Nar_CIF").disabled=true;
	document.getElementById("cust_name").disabled=true;
	//document.getElementById("Account_detail").disabled=true;
	//document.getElementById("placeText").value='<%=fileformat%>';	
	//document.myForm.placeText.value='<%=fileformat%>';	
	//document.myForm.placeText2.value='<%=fileformat2%>';
	//document.getElementById("placeText2").value=fileformat2;	
	
	
		if(ref_61=="Y")
	{
	
	//alert("ref_61123>>"+ref_61);
	document.getElementById("chkFld61Yes").checked=true;
	
	
	 if(document.getElementById("chkFld61Yes").checked){
			document.myForm.chkFld61.value="Y";
		}
		
		 field61MT940=document.myForm.chkFld61.value;

	} 

	if(ref_61=="N")
	{
	//alert("ref_61456>>"+ref_61);
	document.getElementById("chkFld61No").checked=true;
	
	 if(document.getElementById("chkFld61No").checked){
		
			document.myForm.chkFld61.value="N";
		}
		
		 field61MT940=document.myForm.chkFld61.value;

}   

if(ref_612=="Y")
	{
	
		document.getElementById("chk2Fld61Yes").checked=true;
		if(document.getElementById("chk2Fld61Yes").checked){
			document.myForm.chk2Fld61.value="Y";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	} 
	 if(ref_612=="N")
	{
	
		document.getElementById("chk2Fld61No").checked=true;
	 if(document.getElementById("chk2Fld61No").checked)
	{
			document.myForm.chk2Fld61.value="N";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	}  

	 if(empty_stmt2=="Y")
{
	//alert(empty_stmt2);
	document.getElementById("chkZero2Yes").checked=true;
	
	if(document.getElementById("chkZero2Yes").checked){
			document.myForm.chkZero2.value="Y";
		}
		
		 generateMT942Stmt=document.myForm.chkZero2.value;
	
	} 

	 if(empty_stmt2=="N")
	{
		//alert(empty_stmt2);

	document.getElementById("chkZero2No").checked=true;
	
	if(document.getElementById("chkZero2No").checked){
			document.myForm.chkZero2.value="N";
		}
				 generateMT942Stmt=document.myForm.chkZero2.value;

}   
	
	
	if(mt940_942=="MT940")
	{ 

//sdded  by Suganya on 01/12/20210 for CS0084608- HPQC: 4356  issue 
	document.getElementById("cust_name").value="<%=custname%>";

		
		document.getElementById("amtbased1").checked=true;
		if(document.myForm.amtbased_flg1.checked==true)
		{
			document.myForm.amtbased_flg_MT940.value="Y";

		}
		else
		{
			document.myForm.amtbased_flg_MT940.value="N";
		}
		if(document.myForm.amtbased_flg_MT940.value == 'Y')
		{
			msgTypeMT940 ="MT940";
		}
	}
if(mt940_9422=="MT942")
{
	
	document.getElementById("amtbased_flg2").checked=true;
	
	if(document.myForm.amtbased_flg2.checked==true)
	{
	document.myForm.amtbased_flg_MT942.value="Y";
	
	}
   else
	{
	document.myForm.amtbased_flg_MT942.value="N";
	}
	if(document.myForm.amtbased_flg_MT942.value == 'Y')
	{
		 msgTypeMT942 ="MT942";
	}
	
}
if(delchnl=="SFTP")
{
	//alert("getHolders");
	getHolders();
	document.getElementById("purtransfer").checked=true;
	
	if(document.myForm.purtransfer_flg1.checked==true)
	{
	document.myForm.purtransfer_flg.value="Y";
	
	}
   else
	{
	document.myForm.purtransfer_flg.value="N";
	}
	if(document.myForm.purtransfer_flg.value == 'Y')
	{
		 sftpMt940 ="SFTP";
	}
	
	if(filetype==".xls")
	{
	
	document.getElementById("fileformat1").checked=true;
	}
	if(filetype==".xlsx")
	{
		document.getElementById("fileformat2").checked=true;
	}
	if(filetype==".csv")
	{
		document.getElementById("fileformat3").checked=true;
	}
	if(filetype==".txt")
	{
		document.getElementById("fileformat4").checked=true;
	}

if(document.myForm.fileformat1.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";  
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".xls";
	}
	
	if(document.myForm.fileformat2.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformat3.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".csv";
	}
	
	if(document.myForm.fileformat4.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".txt";
	}
}
if(delchnl=="SFTP")
{

	document.getElementById("line02").value="<%=uniquetxt1%>";	  

		document.getElementById("line3").value="<%=previewtxt1%>";	
		document.getElementById("email").value="<%=email940%>";
		document.myForm.freqFlag.value="<%=frequency940%>";

}

if(delchnlswift1=="SWIFT")
{
	
	document.getElementById("swiftflg1").checked=true;
		if(document.myForm.swift_flg1.checked==true)
	{		
	document.myForm.swift_flgval.value="Y";
	
	}
   else
	{
	document.myForm.swift_flgval.value="N";
	}
	
	if(document.myForm.swift_flgval.value == 'Y')
	{
		 swiftMt940 ="SWIFT";
	}

}

if(delchnlcbx1=="CBX")
{


//getCBXHolders();
	getHolders();
	document.getElementById("customer_flg1").checked=true;
	
	if(document.myForm.customer_flg1.checked==true)
	{
	document.myForm.customer_flg.value="Y";  	 
}
   else
	{
	document.myForm.customer_flg.value="N";
	}
	
	if(document.myForm.customer_flg.value == 'Y')
	{
		 cbxMt940 ="CBX";
	}

	
if(filetypecbx1==".xls") 
{
	
	document.getElementById("fileformatcbx1").checked=true;
}
 if(filetypecbx1==".xlsx")
{
	
	document.getElementById("fileformatcbx2").checked=true;
}

  if(filetypecbx1==".csv")
{
	
	document.getElementById("fileformatcbx3").checked=true;
}

 if(filetypecbx1==".txt")
{
	
	document.getElementById("fileformatcbx4").checked=true;
}

if(document.myForm.fileformatcbx1.checked==true)  
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".xls";
	}
	
	
	if(document.myForm.fileformatcbx2.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformatcbx3.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".csv";
	}
	
	if(document.myForm.fileformatcbx4.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".txt";
	}
	
	
	//document.getElementById("line03").value="<%=uniquetxt1%>";	  

		//document.getElementById("line04").value="<%=previewtxt1%>";	
}
if(delchnl2=="SFTP")
{
	getHolders2();
	document.getElementById("purtransfer_flg2").checked=true;
	
	if(document.myForm.purtransfer_flg2.checked==true)
	{
	document.myForm.purtransfer_flg02.value="Y";
	
	}
   else
	{
	document.myForm.purtransfer_flg02.value="N";
	}
	
	if(document.myForm.purtransfer_flg02.value == 'Y')
	{
		 sftpMt942 ="SFTP";
	}
	
}
if(delchnlswift2=="SWIFT")
{
document.getElementById("swiftflg2").checked=true;
if(document.myForm.swift_flg2.checked==true)
	{
	document.myForm.swift_flg.value="Y";
	
	}
   else
	{
	document.myForm.swift_flg.value="N";
	}
	
	if(document.myForm.swift_flg.value == 'Y')
	{
		 swiftMt942 ="SWIFT";
	}
	
}	
/*if(delchnlcbx1=="CBX")
{
	getCBXHolders();
	
	document.getElementById("customer_flg1").checked=true;
	
	if(document.myForm.customer_flg1.checked==true)
	{
	document.myForm.customer_flg.value="Y";  	 
}
   else
	{
	document.myForm.customer_flg.value="N";
	}
	
	if(document.myForm.customer_flg.value == 'Y')
	{
		 cbxMt940 ="CBX";
	}
}*/
if(delchnl2=="SFTP")
	
{
	//alert("delchnl233>>"+delchnl2);
	document.getElementById("line06").value="<%=uniquetxt2%>";	  
	
		document.getElementById("line07").value="<%=previewtxt2%>";	
		
		document.getElementById("email1").value="<%=email942%>";
		
		


	//alert("delchnl23553>>"+delchnl2);
	//alert("filetype2>>"+filetype2);
	
if(filetype2==".xls")
{
	
	document.getElementById("file2format1").checked=true;
}
 if(filetype2==".xlsx")
{
	
	document.getElementById("file2format2").checked=true;
}

  if(filetype2==".csv")
{
	
	document.getElementById("file2format3").checked=true;
}

 if(filetype2==".txt")
{
	
	document.getElementById("file2format4").checked=true;
}

  if(document.myForm.file2formatflg1.checked==true)  
	{
	document.myForm.filefrmtflg01.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg01.value="N";
	}
	
	if(document.myForm.filefrmtflg01.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xls";
	}
	if(document.myForm.file2formatflg2.checked==true)
	{
	document.myForm.filefrmtflg02.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg02.value="N";
	}
	if(document.myForm.filefrmtflg02.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xlsx";
	}
	
	if(document.myForm.file2formatflg3.checked==true)
	{
	document.myForm.filefrmtflg03.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg03.value="N";
	}
	if(document.myForm.filefrmtflg03.value == 'Y')
	{
		 sftpFileFormat01MT942 =".csv";
	}
	
	if(document.myForm.file2formatflg4.checked==true)
	{
	document.myForm.filefrmtflg04.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg04.value="N";
	}
	
	if(document.myForm.filefrmtflg04.value == 'Y')
	{
		 sftpFileFormat01MT942 =".txt";
	}		

}
var ttt='<%=path%>';
//alert("ttt>>"+ttt);
document.getElementById("line01").value="<%=path%>";
document.getElementById("line05").value="<%=path2%>";               

if(encryption=="YES")
{
	
	document.getElementById("chkChgPosReqYes").checked=true;
}
else {
	document.getElementById("chkChgPosReqNo").checked=true;
}
if(document.getElementById("chkChgPosReqYes").checked){
			document.myForm.chkChgPosReq.value="Y";
		}else{
			document.myForm.chkChgPosReq.value="N";
		}

		
		if(document.myForm.chkChgPosReq.value == 'Y')
	{
		 encryptionMT940Flg ="YES";
		 //alert(encryptionMT940Flg);
	}
else{
			
			 encryptionMT940Flg ="NO";
		}
document.getElementById("line05").value="<%=path2%>";
if(encryption2=="YES")
{
	
	document.getElementById("chkChgPosReq2Yes").checked=true;
}
else {
	document.getElementById("chkChgPosReq2No").checked=true;
}

if(document.getElementById("chkChgPosReq2Yes").checked){
			document.myForm.chkChgPosReq2.value="Y";
		}else{
			document.myForm.chkChgPosReq2.value="N";
		}

		
		if(document.myForm.chkChgPosReq2.value == 'Y')
	{
		 encryptionMT942Flg ="YES";
		 //alert(encryptionMT940Flg);
	}
else{
			
			 encryptionMT942Flg ="NO";
		}

/*if(document.myForm.chkChgPosReq2.value == 'Y')
	{
		 encryptionMT942Flg ="YES";
	}
else {
	 encryptionMT942Flg ="NO";
}*/
document.getElementById("ilinkPublicTxt2").value="<%=key2%>";
document.getElementById("ilinkPublicTxt").value="<%=key%>";



/*if(delchnl=="SFTP")
{
	
	if(filetype==".xls")
	{
	
	document.getElementById("fileformat1").checked=true;
	}
	if(filetype==".xlsx")
	{
		document.getElementById("fileformat2").checked=true;
	}
	if(filetype==".csv")
	{
		document.getElementById("fileformat3").checked=true;
	}
	if(filetype==".txt")
	{
		document.getElementById("fileformat4").checked=true;
	}

if(document.myForm.fileformat1.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".xls";
	}
	
	if(document.myForm.fileformat2.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformat3.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".csv";
	}
	
	if(document.myForm.fileformat4.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		 sftpFileFormat01MT940 =".txt";
	}
 
}*/

/*if(delchnlcbx1=="CBX")
{
	
if(filetypecbx1==".xls") 
{
	
	document.getElementById("fileformatcbx1").checked=true;
}
 if(filetypecbx1==".xlsx")
{
	
	document.getElementById("fileformatcbx2").checked=true;
}

  if(filetypecbx1==".csv")
{
	
	document.getElementById("fileformatcbx3").checked=true;
}

 if(filetypecbx1==".txt")
{
	
	document.getElementById("fileformatcbx4").checked=true;
}

if(document.myForm.fileformatcbx1.checked==true)  
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".xls";
	}
	
	
	if(document.myForm.fileformatcbx2.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformatcbx3.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".csv";
	}
	
	if(document.myForm.fileformatcbx4.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		 cbxFileFormat01MT940 =".txt";
	}
}*/

//alert("delchnl23553>>"+delchnl2);

/*if(delchnl2=="SFTP")
{
	alert("delchnl23553>>"+delchnl2);
if(filetype2==".xls")
{
	
	document.getElementById("file2format1").checked=true;
}
 if(filetype2==".xlsx")
{
	
	document.getElementById("file2format2").checked=true;
}

  if(filetype2==".csv")
{
	
	document.getElementById("file2format3").checked=true;
}

 if(filetype2==".txt")
{
	
	document.getElementById("file2format4").checked=true;
}

  if(document.myForm.file2formatflg1.checked==true)  
	{
	document.myForm.filefrmtflg01.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg01.value="N";
	}
	
	if(document.myForm.filefrmtflg01.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xls";
	}
	if(document.myForm.file2formatflg2.checked==true)
	{
	document.myForm.filefrmtflg02.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg02.value="N";
	}
	if(document.myForm.filefrmtflg02.value == 'Y')
	{
		 sftpFileFormat01MT942 =".xlsx";
	}
	
	if(document.myForm.file2formatflg3.checked==true)
	{
	document.myForm.filefrmtflg03.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg03.value="N";
	}
	if(document.myForm.filefrmtflg03.value == 'Y')
	{
		 sftpFileFormat01MT942 =".csv";
	}
	
	if(document.myForm.file2formatflg4.checked==true)
	{
	document.myForm.filefrmtflg04.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg04.value="N";
	}
	
	if(document.myForm.filefrmtflg04.value == 'Y')
	{
		 sftpFileFormat01MT942 =".txt";
	}
}*/

	// document.getElementById("searchCrit4").value="<%=eff_date%>";
	
	// document.getElementById("searchCrit5").value="<%=end_date%>";
	 
	// document.getElementById("searchCrit6").value="<%=eff_date2%>";
	
	 //document.getElementById("searchCrit7").value="<%=end_date2%>";
	 
     //alert("ibanreq456>>"+ibanreq);
	 
	/* if(ibanreq=="Y")
	{
		
		
		document.getElementById("fieldIban").checked=true;
		if(document.getElementById("fieldIban").checked)
		{
			document.myForm.fieldIban.value="Y";
		}
		 field25MT940 =document.myForm.fieldIban.value;	
	
	
	} 
	if(ibanreq=="N")
	{
		document.getElementById("fieldAcc").checked=true;
		if(document.getElementById("fieldAcc").checked)
		{
		document.myForm.cntWvrFlg.value="N";
		}
		field25MT940 =document.myForm.cntWvrFlg.value;	

	} */
	/*if(ibanreq2=="Y")
	{
		alert(ibanreq2);
		document.getElementById("fieldIban2").checked=true;
	
	if(document.getElementById("fieldIban2").checked){
			document.myForm.fieldIban2.value="Y";
		}
		
		 field25MT942 = document.myForm.fieldIban2.value;
	} 
	if(ibanreq2=="N")
	{
		document.getElementById("fieldAcc2").checked=true;
	
		if(document.getElementById("fieldAcc2").checked){
			document.myForm.fieldAcc2.value="N";
		}
		field25MT942 = document.myForm.fieldAcc2.value;
	}  */
	 
	/*if(ref_612=="Y")
	{
	
		document.getElementById("chk2Fld61Yes").checked=true;
		if(document.getElementById("chk2Fld61Yes").checked){
			document.myForm.chk2Fld61.value="Y";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	} 
	 if(ref_612=="N")
	{
	
		document.getElementById("chk2Fld61No").checked=true;
	 if(document.getElementById("chk2Fld61No").checked)
	{
			document.myForm.chk2Fld61.value="N";
		}
		 field61MT942=document.myForm.chk2Fld61.value;
	}  */ 

/*if(ref_61=="Y")
	{
	
	document.getElementById("chkFld61Yes").checked=true;
	
	
	 if(document.getElementById("chkFld61Yes").checked){
			document.myForm.chkFld61Yes.value="Y";
		}
		
		 field61MT940=document.myForm.chkFld61Yes.value;

	} 

	if(ref_61=="N")
	{
	
	document.getElementById("chkFld61No").checked=true;
	
	 if(document.getElementById("chkFld61No").checked){
		
			document.myForm.chkFld61No.value="N";
		}
		
		 field61MT940=document.myForm.chkFld61No.value;

}   */
	 
			/* if(empty_stmt2=="Y")
{
	alert(empty_stmt2);
	document.getElementById("chkZero2Yes").checked=true;
	
	if(document.getElementById("chkZero2Yes").checked){
			document.myForm.chkZero2.value="Y";
		}
		
		 generateMT942Stmt=document.myForm.chkZero2.value;
	
	} 

	 if(empty_stmt2=="N")
	{
	
	document.getElementById("chkZero2No").checked=true;
	
	if(document.getElementById("chkZero2No").checked){
			document.myForm.chkZero2.value="N";
		}
				 generateMT942Stmt=document.myForm.chkZero2.value;

}   */
	 
	 	/*	 if(val90_c2=="Y")
{
	
	document.getElementById("chk2Fld90Yes").checked=true;
	
	 if(document.getElementById("chk2Fld90Yes").checked){
			document.myForm.chk2Fld90.value="Y";
		}
	 field90MT942=document.myForm.chk2Fld90.value;
} 

	 if(val90_c2=="N")
{
	
	document.getElementById("chk2Fld90No").checked=true;
	 if(document.getElementById("chk2Fld90No").checked){
			document.myForm.chk2Fld90.value="N";
		}
			 field90MT942=document.myForm.chk2Fld90.value;

}   */

	 	/*	 if(val34f2=="S")
{
	
	document.getElementById("fieldSingle").checked=true;
	
	if(document.getElementById("fieldSingle").checked){
			document.myForm.cntWvrFlgSingle.value="Y";
		
	}
	
		 field34MT942 ="S";
		
	
} 

	 if(val34f2=="B")
{
	
	document.getElementById("fieldBoth").checked=true;
	if(document.getElementById("fieldBoth").checked){
			document.myForm.cntWvrFlgSingle.value="N";
		
	}
	
		 field34MT942 ="B";
	
}   */

 		/* if(fre_type2=="H")
{
	document.getElementById("deltimehour").checked=true;
	if(document.myForm.deltimeflghourval.checked==true)
	{
	document.myForm.deltimehrflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimehrflg.value="N";
	}
	
	if(document.myForm.deltimehrflg.value == 'Y')
	{
		 delTimeHourBasesMT942 ="H";
	}
	
	if(document.myForm.deltimehrflg.value == 'N')
	{
		 delTimeHourBasesMT942 ="S";
	}
	
	
} 

	 if(fre_type2=="S")
{
	document.getElementById("deltimeslot").checked=true;
	if(document.myForm.deltimeflgslotval.checked==true)
	{
	document.myForm.deltimeslotflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimeslotflg.value="N";
	}
	
	if(document.myForm.deltimeslotflg.value == 'Y')
	{
		 delTimeSlotBasesMT942 ="Y";
	}
	
	if(document.myForm.deltimeslotflg.value == 'N')
	{
		 delTimeSlotBasesMT942 ="N";
	}
	
	 
}  */

//document.getElementById("MtDel_Time").value="<%=hr_time2%>"; 


 /*if(fre_type2=="S")
{

   
	document.getElementById("FIRST_SLOT_HOUR_TIME").value="<%=slotNo1%>";
	document.getElementById("SECOND_SLOT_HOUR_TIME").value="<%=slotNo2%>";
	document.getElementById("THIRD_SLOT_HOUR_TIME").value="<%=slotNo3%>";
    
}*/


 /*if(empty_stmt=="Y")
{
	alert(empty_stmt);
	document.getElementById("chkZeroYes").checked=true;
	
	if(document.getElementById("chkZeroYes").checked){
			document.myForm.chkZeroYes.value="Y";
		}

		  generateMT940Stmt=document.myForm.chkZeroYes.value;
	
		
	
} 

	 if(empty_stmt=="N")
{
	alert(empty_stmt);
	document.getElementById("chkZeroNo").checked=true;
	
	if(document.getElementById("chkZeroNo").checked){
			
			document.myForm.chkZeroNo.value="N";
		}
		
		 generateMT940Stmt=document.myForm.chkZeroNo.value;
}  
*/


}
var bicarray ="";
function validateBicCodes(){
  var acc_array = document.getElementById("narrationText");
  for(loopCount1 = 0 ; loopCount1 < acc_array.length; loopCount1++ )	{
  var ele=  document.getElementById("element"+loopCount1).value;	
  var acc=acc_array[loopCount1].value;//document.getElementById("acc"+loopCount1).textContent;	
  if(bicarray==""){
	bicarray=acc+"$"+ele ;	
   }else{
   bicarray=bicarray+"@"+acc+"$"+ele;
   }
	
} 
}

var bicarray2 ="";
function validateBicCodesMt942(){
  var acc_array = document.getElementById("narrationText");
  for(loopCount1 = 0 ; loopCount1 < acc_array.length; loopCount1++ )	{
  var ele=  document.getElementById("elementMT942"+loopCount1).value;	
  var acc=acc_array[loopCount1].value;//document.getElementById("acc"+loopCount1).textContent;	
  if(bicarray2==""){
	bicarray2=acc+"$"+ele ;	
   }else{
   bicarray2=bicarray2+"@"+acc+"$"+ele;
   }
	
} 
}


function doAllSave()
{
	//alert("doAllSave");
	var fileLevelStoreFlag='M';
	var unidID="<%=unitid%>";
	
	
	var channalId;
	if(document.myForm.amtbased_flg1.checked==true)
	{
		document.myForm.amtbased_flg_MT940.value="MT940";
		var msgTypeMT940 ="MT940";
	}
    if(document.myForm.amtbased_flg2.checked==true)
	{
	document.myForm.amtbased_flg_MT942.value="MT942";
	var msgTypeMT942 ="MT942";
	
	}
	if(document.myForm.purtransfer_flg1.checked==true) 
	{
	document.myForm.purtransfer_flg.value="Y";
	channalId = "SFTP";
	//document.getElementById("chkChgPosReq").value="SFTP";
	
	
	}
	
	
	var sftpFolderPathMT940 = document.getElementById("line01").value;
	//alert("doAllSave3"+document.getElementById("chkChgPosReq").checked);
	/*if(document.getElementById("chkChgPosReq").checked){
			document.myForm.chkChgPosReq.value="Y";
			document.getElementById("encryptFlag").value = "YES";
		}else{
			document.myForm.chkChgPosReq.value="N";
			document.getElementById("encryptFlag").value = "No";
		} */
	//alert("doAllSave4");
	
	//alert("doAllSave5");
	var sftpilinkPublicTxtMT940 = document.getElementById("ilinkPublicTxt").value;
	//alert("doAllSave6"+document.getElementById("fileformat1").checked);

	if(document.getElementById("fileformat1").checked==true){
		document.getElementById("fileformatflg01").value =".txt";
	
	}
	else if(document.getElementById("fileformat2").checked==true)
	{
		document.getElementById("fileformatflg01").value =".xls";
	}
	else if(document.getElementById("fileformat3").checked==true)
	{
		document.getElementById("fileformatflg01").value =".csv";
	}
	else if(document.getElementById("fileformat4").checked==true)
	{
		document.getElementById("fileformatflg01").value =".txt";
	}
	var sftpFileFormatUniqueTxtMT940 = document.getElementById("line02").value; 
	//alert("doAllSave 8");
	/*var placeText=document.myForm.placeText.value;
	var sftpFileFormatPreviewMT940 = document.getElementById("line3").value;
	if(delchnl=="SFTP")
	{
		var prev_sftpFileFormat01MT940="<%=filetype%>";
		var prev_sftpMt940="<%=delchnl%>";
		var prev_uniquetxtsftp1="<%=uniquetxt1%>";
		var prev_previewtxtsftp1="<%=previewtxt1%>";
		var prev_path="<%=path%>";
		var prev_Key="<%=key%>";
		var prev_encryptionMT940Flg="<%=encryption%>";
	} 
	if(delchnl=="CBX")
	{
	var prev_cbxFileFormat01MT940="<%=filetype%>";
	var prev_cbxMt940="<%=delchnl%>";
	var prev_uniquetxtcbx1="<%=uniquetxt1%>";
	var prev_previewtxtcbx1="<%=previewtxt1%>";

	} 
	if(delchnl2=="SFTP")
	{
	var prev_sftpFileFormat01MT942="<%=filetype2%>";
    var prev_uniquetxt2="<%=uniquetxt2%>";
	var prev_previewtxt2="<%=previewtxt2%>";
	var prev_path2="<%=path2%>";
	var prev_Key2="<%=key2%>";
	var prev_encryptionMT942Flg="<%=encryption2%>";

	var prev_sftpMt942="<%=delchnl2%>";

	} 
	if(mt940_942=="MT940")
	{
	//var prev_msgTypeMT940=msgTypeMT940;
	var prev_msgTypeMT940="<%=mt940_942%>";
	//var prev_generateMT940Stmt=generateMT940Stmt;
	var prev_generateMT940Stmt="<%=empty_stmt%>";
	var prev_field25MT940="<%=ibanreq%>";
	var prev_field61MT940="<%=ref_61%>";
	var prev_eff_date="<%=eff_date%>";
	var prev_end_date="<%=end_date%>";
} 
if(mt940_9422=="MT942")
{ 
	var prev_msgTypeMT942="<%=mt940_9422%>";
	var prev_generateMT942Stmt="<%=empty_stmt2%>";
	var prev_field25MT942="<%=ibanreq2%>";
	var prev_field61MT942="<%=ref_612%>";
	var prev_eff_date2="<%=eff_date2%>";
	var prev_end_date2="<%=end_date2%>";
	var prev_field90MT942="<%=val90_c2%>";
	var prev_field34MT942="<%=val34f2%>";
	var prev_val34f_d2="<%=val34f_d2%>";
	var prev_val34f_c2="<%=val34f_c2%>";
	var prev_delTimeSlotBasesMT942=delTimeSlotBasesMT942;
	var prev_delTimeHourBasesMT942="<%=fre_type2%>"; 
	var prev_hr_time2="<%=hr_time2%>";
var prev_slotNo1="<%=slotNo1%>";
var prev_slotNo2="<%=slotNo2%>";
var prev_slotNo3="<%=slotNo3%>";


} */
//alert("doAllSave 5");

 //document.getElementById("hrefLink5").disabled = false;
	    //document.getElementById("hrefLink6").disabled = false;
	    var cust_name=document.myForm.cust_name.value;
		//alert("doAllSave 2");  
        var Nar_CIF=document.myForm.Nar_CIF.value;
		//alert("doAllSave 3");  
	   	//var accountno = document.myForm.Account_detail.value;
	 //alert("doAllSave 2");  
	 
	if(document.myForm.amtbased_flg1.checked==true)
	{
		document.myForm.amtbased_flg_MT940.value="Y";
	}
   else
	{
		document.myForm.amtbased_flg_MT940.value="N";
	}
	//alert("doAllSave 3");
	if(document.myForm.amtbased_flg_MT940.value == 'Y')
	{
		var msgTypeMT940 ="MT940";
	}
	if(document.myForm.amtbased_flg2.checked==true)
	{
	document.myForm.amtbased_flg_MT942.value="Y";
	
	}
   else
	{
	document.myForm.amtbased_flg_MT942.value="N";
	}
	//alert("doAllSave 4");
	if(document.myForm.amtbased_flg_MT942.value == 'Y')
	{
		var msgTypeMT942 ="MT942";
	}
	
	
	if(document.myForm.purtransfer_flg1.checked==true)
	{
	document.myForm.purtransfer_flg.value="Y";
	
	}
   else
	{
	document.myForm.purtransfer_flg.value="N";
	}
	if(document.myForm.purtransfer_flg.value == 'Y')
	{
		var sftpMt940 ="SFTP";
	}
	
	
	//alert("doAllSave 211");
	var sftpFolderPathMT940 = document.getElementById("line01").value; 
	
	if(document.getElementById("chkChgPosReqYes").checked){
			document.myForm.chkChgPosReq.value="Y";
		}else{
			document.myForm.chkChgPosReq.value="N";
		}

		//alert("doAllSave 212");
		if(document.myForm.chkChgPosReq.value == 'Y')
	{
		var encryptionMT940Flg ="YES";
	}
		else{
			
			
			var encryptionMT940Flg ="NO";
		}
		//alert("doAllSave 214");
		
	var sftpilinkPublicTxtMT940 = document.getElementById("ilinkPublicTxt").value;
	
	//alert(sftpilinkPublicTxtMT940);  
	
	if(document.myForm.fileformat1.checked == false && document.myForm.fileformat2.checked==false && document.myForm.fileformat3.checked == false && document.myForm.fileformat4.checked==false){
	
	var sftpFileFormat01MT940 =".txt";
	
	}
	 if(document.myForm.fileformat1.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		var sftpFileFormat01MT940 =".xls";
	}
	
	
	
	if(document.myForm.fileformat2.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		var sftpFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformat3.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		var sftpFileFormat01MT940 =".csv";
	}
	
	
	if(document.myForm.fileformat4.checked==true)
	{
	document.myForm.fileformatflg01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflg01.value="N";
	}
	
	if(document.myForm.fileformatflg01.value == 'Y')
	{
		var sftpFileFormat01MT940 =".txt";
	}
	//alert("in loop1");
	var sftpFileFormatUniqueTxtMT940 = document.getElementById("line02").value; 
	var placeText=document.myForm.placeText.value;
	var sftpFileFormatPreviewMT940 = document.getElementById("line3").value;

	if(document.myForm.customer_flg1.checked==true)
	{
		document.myForm.customer_flg.value="Y"; 

		if(channalId=="SFTP")
		channalId="SFTP,CBX"
	document.getElementById("chkChgPosReq").value=channalId;
		
	}
   else
	{
	document.myForm.customer_flg.value="N";
	}
	
	if(document.myForm.customer_flg.value == 'Y')
	{
		var cbxMt940 ="CBX";
	}
	
	if(document.myForm.fileformatcbx1.checked == false && document.myForm.fileformatcbx2.checked==false && document.myForm.fileformatcbx3.checked == false && document.myForm.fileformatcbx4.checked==false){
	
	var cbxFileFormat01MT940 =".txt";
	
	}
	 if(document.myForm.fileformatcbx1.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		var cbxFileFormat01MT940 =".xls";
	}
	
	
	
	if(document.myForm.fileformatcbx2.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		var cbxFileFormat01MT940 =".xlsx";
	}
	
	if(document.myForm.fileformatcbx3.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		var cbxFileFormat01MT940 =".csv";
	}
	
	
	if(document.myForm.fileformatcbx4.checked==true)
	{
	document.myForm.fileformatflgcbx01.value="Y";
	
	}
   else
	{
	document.myForm.fileformatflgcbx01.value="N";
	}
	
	if(document.myForm.fileformatflgcbx01.value == 'Y')
	{
		var cbxFileFormat01MT940 =".txt";
	}
	
	/*if(document.getElementById("fileformatcbx1").checked){
	
		document.getElementById("fileformatflgcbx01").value =".xls";
		var cbxFileFormat01MT940 =".xls";
	
	}
	else if(document.getElementById("fileformatcbx2").checked)
	{
		document.getElementById("fileformatcbx1").value =".xls";
		var cbxFileFormat01MT940 =".xls";
	}
	else if(document.getElementById("fileformatcbx3").checked)
	{
		document.getElementById("fileformatcbx1").value =".csv";
		var cbxFileFormat01MT940 =".csv";
	}
	else if(document.getElementById("fileformatcbx4").checked)
	{
		document.getElementById("fileformatcbx1").value =".txt";
		var cbxFileFormat01MT940 =".txt";
	}
*/

	//alert("doAllSave 14");
	var placeTextCbx=document.myForm.placeTextCbx.value;
	var cbxFileFormatUniqueTxtMT940 = document.getElementById("line03").value; 
	var cbxFileFormatPreviewMT940 = document.getElementById("line04").value;

 
/*if(document.getElementById("chkZeroYes").checked){
	document.getElementById("chkZero").value="Y";
	}else{
		document.getElementById("chkZero").value="N";
	}

	var generateMT940Stmt=document.getElementById("chkZero").value;*/
	
	
	
	if(document.getElementById("chkZeroYes").checked){
			document.myForm.chkZero.value="Y";
		}else{
			document.myForm.chkZero.value="N";
		}
		
		var generateMT940Stmt=document.myForm.chkZero.value;
	
	
	
	
	
	
	
	
	
	
if(document.getElementById("fieldIban").checked){
			document.getElementById("hidFieldIban").value="Y";
		}else{
			document.getElementById("hidFieldIban").value="N";
		}
	//if(document.myForm.cntWvrFlg.value == 'Y')
	//{
		//var field25MT940 ="IBAN";

	//}	
		//else{
			
		//var field25MT940 ="ACCOUNT NUMBER";
		//}
		//alert("doAllSave 15");
		
	
	/*if(document.getElementById("fieldIban").checked){
			document.getElementById("hidFieldIban").value="Y";       
		}else{
			document.getElementById("hidFieldIban").value="N";
		}*/
 
 
if(document.getElementById("fieldIban").checked){
			 document.myForm.chkFld25.value="Y";       
		}else{
			document.myForm.chkFld25.value=="N";
		}
 
 var field25MT940 =document.myForm.chkFld25.value;
 
 if(document.getElementById("chkFld61Yes").checked){
			document.myForm.chk2Fld61.value="Y";
		}else{
			document.myForm.chk2Fld61.value="N";
		}
//alert("doAllSave 16");
var field61MT940=document.myForm.chk2Fld61.value;
		
    var frdateMT940=document.myForm.FROM_DATE.value;
	var tdateMT940=document.myForm.TO_DATE.value;
	
var enabledMT940Flg =document.myForm.amtbased_flg_MT940.value;
var enabledMT942Flg =document.myForm.amtbased_flg_MT942.value;
var sftpMT940Flg =document.myForm.purtransfer_flg.value;

var cbxMT940Flg=document.myForm.customer_flg.value;




//alert("doAllSave 17");
	
	if(document.myForm.purtransfer_flg2.checked==true)
	{
	document.myForm.purtransfer_flg02.value="Y";
	
	}
   else
	{
	document.myForm.purtransfer_flg02.value="N";
	}
	
	if(document.myForm.purtransfer_flg02.value == 'Y')
	{
		var sftpMt942 ="SFTP";
	}
	
	
	var sftpMT942Flg =document.myForm.purtransfer_flg02.value;

	var sftpFolderPathMT942 = document.getElementById("line05").value; 

	 
	if(document.getElementById("chkChgPosReq2Yes").checked){
			document.myForm.chkChgPosReq2.value="Y";
		}else{
			document.myForm.chkChgPosReq2.value="N";
		}
		
	if(document.myForm.chkChgPosReq2.value == 'Y')
	{
		var encryptionMT942Flg ="YES";
	}
		//var encryptionMT942Flg=document.myForm.chkChgPosReq2.value;
else {
	var encryptionMT942Flg ="NO";
}
			var sftpilinkPublicTxtMT942 = document.getElementById("ilinkPublicTxt2").value;
                    
	if(document.myForm.file2formatflg1.checked == false && document.myForm.file2formatflg2.checked==false && document.myForm.file2formatflg3.checked == false && document.myForm.file2formatflg4.checked==false){
	
	var sftpFileFormat01MT942 =".txt";
	
	} 
		//alert("doAllSave 18"); 
	  if(document.myForm.file2formatflg1.checked==true)  
	{
	document.myForm.filefrmtflg01.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg01.value="N";
	}
	
	if(document.myForm.filefrmtflg01.value == 'Y')
	{
		var sftpFileFormat01MT942 =".xls";
	}
	if(document.myForm.file2formatflg2.checked==true)
	{
	document.myForm.filefrmtflg02.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg02.value="N";
	}
	if(document.myForm.filefrmtflg02.value == 'Y')
	{
		var sftpFileFormat01MT942 =".xlsx";
	}
	
	if(document.myForm.file2formatflg3.checked==true)
	{
	document.myForm.filefrmtflg03.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg03.value="N";
	}
	if(document.myForm.filefrmtflg03.value == 'Y')
	{
		var sftpFileFormat01MT942 =".csv";
	}
	
	if(document.myForm.file2formatflg4.checked==true)
	{
	document.myForm.filefrmtflg04.value="Y";
	
	}
   else
	{
	document.myForm.filefrmtflg04.value="N";
	}
	
	if(document.myForm.filefrmtflg04.value == 'Y')
	{
		var sftpFileFormat01MT942 =".txt";
	}
	var sftpFileFormatUniqueTxtMT942 = document.getElementById("line06").value; 
    var placeText2=document.myForm.placeText2.value;
    var sftpFileFormatPreviewMT942 = document.getElementById("line07").value; 
	
	if(document.myForm.deltimeflghourval.checked==true)
	{
	document.myForm.deltimehrflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimehrflg.value="N";
	}
	
	if(document.myForm.deltimehrflg.value == 'Y')
	{
		var delTimeHourBasesMT942 ="H";
	}
	
	if(document.myForm.deltimehrflg.value == 'N')
	{
		var delTimeHourBasesMT942 ="S";
	}
	
	//alert("doAllSave 21");
	//var delTimeHourBasesMT942 =document.myForm.deltimehrflg.value;
	
	
	if(document.myForm.deltimeflgslotval.checked==true)
	{
	document.myForm.deltimeslotflg.value="Y";
	
	}
   else
	{
	document.myForm.deltimeslotflg.value="N";
	
	}
	
	if(document.myForm.deltimeslotflg.value == 'Y')
	{
		//var delTimeSlotBasesMT942 ="S";
		var delTimeSlotBasesMT942 =document.myForm.deltimeslotflg.value;
	}
	
	if(document.myForm.deltimeslotflg.value == 'N')
	{
		//var delTimeSlotBasesMT942 ="H";
		var delTimeSlotBasesMT942 =document.myForm.deltimeslotflg.value;
		
	}
		
		
	 var deliveryTimeMT942 =  document.getElementById("MtDel_Time").value;   

	  var firstCutOffHr=document.getElementById("FIRST_SLOT_HOUR_TIME").value;
		var firstCutOffMin=document.getElementById("FIRST_SLOT_MIN_TIME").value;
		var firstCutOffSec=document.getElementById("FIRST_SLOT_SEC_TIME").value;
		var firstCutOff=firstCutOffHr+firstCutOffMin+firstCutOffSec;
		//var firstCutOff=firstCutOffHr+":00:00";
		
	 var secondCutOffHr=document.getElementById("SECOND_SLOT_HOUR_TIME").value;
		var secondCutOffMin=document.getElementById("SECOND_SLOT_MIN_TIME").value;
		var secondCutOffSec=document.getElementById("SECOND_SLOT_SEC_TIME").value;
		var secondCutOff=secondCutOffHr+secondCutOffMin+secondCutOffSec;
		//var secondCutOff=secondCutOffHr+":00:00";

		 var thirdCutOffHr=document.getElementById("THIRD_SLOT_HOUR_TIME").value;
		var thirdCutOffMin=document.getElementById("THIRD_SLOT_MIN_TIME").value;
		var thirdCutOffSec=document.getElementById("THIRD_SLOT_SEC_TIME").value;
		var thirdCutOff=thirdCutOffHr+thirdCutOffMin+thirdCutOffSec;
	//var thirdCutOff=thirdCutOffHr +":00:00";
	
	if(document.myForm.amtbased_flg1.checked==false && document.myForm.amtbased_flg2.checked==false){		
	confirm("Please select MT Message Type");
	return;
	}
	
	
	if(document.myForm.amtbased_flg2.checked==true && document.myForm.deltimeslot.checked==false && document.myForm.deltimehour.checked==false){
	  confirm("Please select MT942 Delivery Frequency");
	 return;
		
	}	
		
		
	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr=="" && secondCutOffHr=="" && thirdCutOffHr=="")){
	  confirm("Please enter Time Slot");
	 return;
		
	}
	
	//var thirdCutOff=thirdCutOffHr +":00:00";
	var firstCutOffHr1;
	var secondCutOffHr1;
	var thirdCutOffHr1;
   
   if(firstCutOffHr.length==1){
     firstCutOffHr1= "0"+firstCutOffHr;
    }else{
	firstCutOffHr1=firstCutOffHr;
	}
	if(secondCutOffHr.length==1){
     secondCutOffHr1= "0"+secondCutOffHr;
    }else{
	secondCutOffHr1= secondCutOffHr;	
	}
	if(thirdCutOffHr.length==1){
     thirdCutOffHr1= "0"+thirdCutOffHr;
    }else{
	thirdCutOffHr1= thirdCutOffHr;	
	}

	
		if (!Array.prototype.indexOf)
{
  Array.prototype.indexOf = function(elt /*, from*/)
  {
    var len = this.length >>> 0;

    var from = Number(arguments[1]) || 0;
    from = (from < 0)
         ? Math.ceil(from)
         : Math.floor(from);
    if (from < 0)
      from += len;

    for (; from < len; from++)
    {
      if (from in this &&
          this[from] === elt)
        return from;
    }
    return -1;
  };
}
/*
if( document.myForm.deltimeflgslotval.checked==true && ( hours_array.indexOf(firstCutOffHr1)==-1 || hours_array.indexOf(secondCutOffHr1)==-1 || hours_array.indexOf(thirdCutOffHr1)==-1)){	
  document.getElementById("FIRST_SLOT_HOUR_TIME").value="";
  document.getElementById("SECOND_SLOT_HOUR_TIME").value="";
  document.getElementById("THIRD_SLOT_HOUR_TIME").value="";
confirm("Please select hour between 0 to 23");
return;	
	
 } */
	
	/*if( document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1==secondCutOffHr1 || firstCutOffHr1==thirdCutOffHr1 || secondCutOffHr1==thirdCutOffHr1)){
	  document.getElementById("FIRST_SLOT_HOUR_TIME").value="";
	  document.getElementById("SECOND_SLOT_HOUR_TIME").value="";
	  document.getElementById("THIRD_SLOT_HOUR_TIME").value="";
	confirm("No overlapping is allowed.");
	return;
		
	}*/
	if(firstCutOffHr1.length != 0 && secondCutOffHr1.length == 0 && thirdCutOffHr1.length != 0){
	 confirm("Invalid selection of time slot");
	  return;	
	}
	
	if(firstCutOffHr1.length == 0 && secondCutOffHr1.length == 0 && thirdCutOffHr1.length != 0){
	 confirm("Invalid selection of time slot");
	  return;	
	}
	
	if(firstCutOffHr1.length == 0 && secondCutOffHr1.length != 0 && thirdCutOffHr1.length == 0){
	 confirm("Invalid selection of time slot");
	  return;	
	}
	if(firstCutOffHr1.length == 0 && secondCutOffHr1.length != 0  && thirdCutOffHr1.length != 0){
	
	 confirm("Invalid selection of time slot");
	  return;	
	
	}
	
	if(firstCutOffHr1.length != 0 && secondCutOffHr1.length != 0 && thirdCutOffHr1.length == 0){
	
	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 == secondCutOffHr1) ){
	
      document.getElementById("FIRST_SLOT_HOUR_TIME").value="";
	  document.getElementById("SECOND_SLOT_HOUR_TIME").value="";
	  document.getElementById("THIRD_SLOT_HOUR_TIME").value="";
	  confirm("No overlapping is allowed.");
	  return;	
	}
	}
	
	
	if(firstCutOffHr1.length != 0 && secondCutOffHr1.length != 0 && thirdCutOffHr1.length != 0){
	
	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 == secondCutOffHr1 || firstCutOffHr1 ==
	thirdCutOffHr1 || secondCutOffHr1 == thirdCutOffHr1) ){
	
	  document.getElementById("FIRST_SLOT_HOUR_TIME").value="";
	  document.getElementById("SECOND_SLOT_HOUR_TIME").value="";
	  document.getElementById("THIRD_SLOT_HOUR_TIME").value="";
	  confirm("No overlapping is allowed.");
	  return;		
	}
	}
	
	if(document.myForm.deltimeflghourval.checked==true && (deliveryTimeMT942=="")){
	confirm("Please select hour frequency");
	return;
	}
	/*if( document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 > secondCutOffHr1 || firstCutOffHr1 >
	thirdCutOffHr1|| secondCutOffHr1 > thirdCutOffHr1) ) {
	
	confirm("Time slot should be sequential");
	return;	
	}*/
	if(firstCutOffHr1.length!= 0 && secondCutOffHr1.length!= 0 && thirdCutOffHr1.length== 0){

	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 > secondCutOffHr1) ){
	
	confirm("Time slot should be sequential");
	return;	
	}
	}
	
	/*if(firstCutOffHr1.length != 0 && secondCutOffHr1.length == 0&& thirdCutOffHr1.length != 0){
	
	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 >thirdCutOffHr1) ){
	
	confirm("Time slot should be sequential");
	return;	
	}
	}*/
	
	/*if(firstCutOffHr1.length == 0 &&  secondCutOffHr1.length != 0 && thirdCutOffHr.length != 0){
	
	if(document.myForm.deltimeflgslotval.checked==true && secondCutOffHr1 > thirdCutOffHr1 ){
	
	confirm("Time slot should be sequential");
	return;	
	}
	}*/
	
	
	if(firstCutOffHr1.length != 0  && secondCutOffHr1.length != 0 &&  thirdCutOffHr1.length != 0){
	
	if(document.myForm.deltimeflgslotval.checked==true && (firstCutOffHr1 > secondCutOffHr1 || firstCutOffHr1 >
	thirdCutOffHr1|| secondCutOffHr1 > thirdCutOffHr1) ){
	
	confirm("Time slot should be sequential");
	return;	
	}
	}
	
	
 /*	if( document.myForm.amtbased_flg2.checked==true && document.myForm.purtransfer_flg2.checked==true &&document.myForm.file2format1.checked==false && document.myForm.file2format2.checked==false &&
    document.myForm.file2format3.checked==false && document.myForm.file2format4.checked==false) {
	
	confirm("Please select SFTP file format.");
	return;	
	}
	
	if( document.myForm.amtbased_flg1.checked==true && document.myForm.purtransfer_flg1.checked==true &&
    document.myForm.fileformatflg1.checked==false && document.myForm.fileformatflg2.checked==false  &&
    document.myForm.fileformatflg3.checked==false  &&  document.myForm.fileformatflg4.checked==false
	) {
	
	confirm("Please select SFTP file format.");
	return;	
	}  */
	
	if( document.myForm.amtbased_flg1.checked==true && document.myForm.customer_flg1.checked==true &&
    document.myForm.fileformatcbx1.checked==false  &&  document.myForm.fileformatcbx2.checked==false  &&
    document.myForm.fileformatcbx3.checked==false  &&  document.myForm.fileformatcbx4.checked==false
	) {
	
	confirm("Please select Customer Front End  file format.");
	return;	
	}
	
	/*if( document.myForm.amtbased_flg1.checked==true && document.myForm.chkZeroYes.checked==false  &&  document.myForm.chkZeroNo.checked==false
	) {
	
	confirm("Please select value for Generate MT940 Statement when no transactions encountered for the day? ");
	return;	
	}*/
	
		if( document.myForm.amtbased_flg1.checked==true && document.getElementById("chkZeroYes").checked==false &&   document.getElementById("chkZeroNo").checked==false) {
	
	confirm("Please select value for Generate MT940 Statement when no transactions encountered for the day? ");
	return;	
	}

	if( document.myForm.amtbased_flg2.checked==true && document.myForm.chkZero2Yes.checked==false  &&  document.myForm.chkZero2No.checked==false
	) {
	
	confirm("Please select value for Generate MT942 Statement when no transactions encountered for the day? ");
	return;	
	}
	
	
	if(document.myForm.amtbased_flg1.checked==true && document.myForm.purtransfer_flg1.checked==true &&
     document.getElementById("line01").value =="") {
	
	confirm("Please Enter SFTP path.");
	return;	
	}
	if(document.myForm.amtbased_flg2.checked==true && document.myForm.purtransfer_flg2.checked==true && document.getElementById("line05").value =="") {
	
	confirm("Please Enter SFTP path.");
	return;	
	}
	
	if(document.getElementById("chkZero2Yes").checked){
			document.myForm.chkZero2.value="Y";
		}else{
			document.myForm.chkZero2.value="N";
		}
		
		var generateMT942Stmt=document.myForm.chkZero2.value;

		
		if(document.getElementById("fieldIban2").checked){
			document.myForm.chk2Fld25.value="Y";
		}else{
			document.myForm.chk2Fld25.value="N";
		}
		
		var field25MT942 = document.myForm.chk2Fld25.value;
		
		if(document.getElementById("fieldSingle").checked){
			document.myForm.cntWvrFlgSingle.value="Y";
		}else{
			document.myForm.cntWvrFlgSingle.value="N";
		}
		if(document.myForm.cntWvrFlgSingle.value == 'Y')
	{
		var field34MT942 ="S";
	}	
		else{
			
		var field34MT942 ="B";
		}
		//alert("doAllSave 12666"); 
		   var floorDebit = document.getElementById("floorDebit").value; 
		var floorCredit = document.getElementById("floorCredit").value; 
			  //var floorDebit = "D";
			//var floorCredit = "C"; 
			
      if(document.getElementById("chk2Fld61Yes").checked){
			document.myForm.chk2Fld61.value="Y";
		}else{
			document.myForm.chk2Fld61.value="N";
		}
		var field61MT942=document.myForm.chk2Fld61.value;

		
		 if(document.getElementById("chk2Fld90Yes").checked){
			document.myForm.chk2Fld90.value="Y";
		}else{
			document.myForm.chk2Fld90.value="N";
		}
	var field90MT942=document.myForm.chk2Fld90.value; 
//alert("doAllSave 121"); 
		           
	var frdateMT942=document.myForm.FR_DATE.value;
    var tdateMT942=document.myForm.END_DATE.value;
	
	
		
	if(document.myForm.swift_flg1.checked==true)
	{
	document.myForm.swift_flgval.value="Y";
	validateBicCodes();
	}
   else
	{
	document.myForm.swift_flgval.value="N";
	}
	
	if(document.myForm.swift_flgval.value == 'Y')
	{
		var swiftMt940 ="SWIFT";
	}
	
	//MT942
	if(document.myForm.swift_flg2.checked==true)
	{
	document.myForm.swift_flg.value="Y";
	validateBicCodesMt942();
	}
   else
	{
	document.myForm.swift_flg.value="N";
	}
	
	if(document.myForm.swift_flg.value == 'Y')
	{
		var swiftMt942 ="SWIFT";
	}
	
	/* if( document.myForm.swift_flg2.checked==true && biccodeDetails1=="") {
	confirm("Please provide SWIFT Address");
	return;	
}
	
	if( document.myForm.swift_flg1.checked==true && biccodeDetails1=="") {
	
	confirm("Please provide SWIFT Address");
	return;	
	} */
	
	var swiftMT940Flg =document.myForm.swift_flg1.value; 
    var swiftMT942Flg =document.myForm.swift_flg2.value;
	//alert("doAllSave 124");
	
 var narration_Text=document.getElementById("narrationText");

		//alert("narration_Text 1 >>"+narration_Text);

		var narration = "";
		
		for(var i=0; i<narration_Text.options.length; i++){
			 
		narration = narration + narration_Text.options[i].value + ",";
			
			
		}
		
		narration = narration.substring(0,narration.length-1);
	   
		document.myForm.Trans_type.value=narration;

	 var accountdetails1='';  

	   if(document.myForm.amtbased_flg_MT942.value == 'Y' && document.myForm.amtbased_flg_MT942.value == 'N')
	    {
		   accountdetails1="<%=Accountdetails2%>";
	    }
		      else{
			    accountdetails1 = document.myForm.Trans_type.value;
				
			  }
//alert("accountdetails1 4 >>"+accountdetails1);
	var pageType ="MOD";

var ref_no="<%=ref_no%>";
var email940=document.getElementById("email").value;
var email942=document.getElementById("email1").value;
if(document.getElementById("weeklyFrq").checked){
	document.myForm.freqFlag.value="W";
}else{
	document.myForm.freqFlag.value="M";
}
var frequency940=document.myForm.freqFlag.value;

	/*if(prev_msgTypeMT940==msgTypeMT940 && prev_generateMT940Stmt == generateMT940Stmt && prev_msgTypeMT942==msgTypeMT942 && prev_path==sftpFolderPathMT940 && encryptionMT940Flg==prev_encryptionMT940Flg && prev_Key == sftpilinkPublicTxtMT940 && sftpFileFormat01MT940 == prev_sftpFileFormat01MT940 && prev_uniquetxtsftp1 == sftpFileFormatUniqueTxtMT940 && sftpFileFormatPreviewMT940 == prev_previewtxtsftp1 && field25MT940 == prev_field25MT940 && prev_field61MT940 == field61MT940 && frdateMT940 == prev_eff_date && tdateMT940 == prev_end_date && sftpMt940 == prev_sftpMt940 && prev_path2 == sftpFolderPathMT942 && cbxFileFormat01MT940 == prev_cbxFileFormat01MT940 && prev_cbxMt940 == cbxMt940 && prev_uniquetxtcbx1 == cbxFileFormatUniqueTxtMT940 && prev_previewtxtcbx1 == cbxFileFormatPreviewMT940 && sftpMt942 == prev_sftpMt942 && encryptionMT942Flg == prev_encryptionMT942Flg && sftpilinkPublicTxtMT942 == prev_Key2 && sftpFileFormat01MT942 == prev_sftpFileFormat01MT942 && sftpFileFormatUniqueTxtMT942 ==  prev_uniquetxt2 && sftpFileFormatPreviewMT942 == prev_previewtxt2 &&  delTimeHourBasesMT942 == prev_delTimeHourBasesMT942 && delTimeSlotBasesMT942 == prev_delTimeSlotBasesMT942 && deliveryTimeMT942 == prev_hr_time2 && thirdCutOffHr == prev_slotNo3 && secondCutOffHr == prev_slotNo2 && firstCutOffHr == prev_slotNo1 && generateMT942Stmt == prev_generateMT942Stmt && field25MT942 == prev_field25MT942 && field34MT942 == prev_field34MT942 && floorDebit == prev_val34f_d2 && floorCredit == prev_val34f_c2 && field61MT942 == prev_field61MT942 && field90MT942 == prev_field90MT942 && frdateMT942 == prev_eff_date2 && tdateMT942 == prev_end_date2 )


		{
			confirm("No changes to Modify");
			return false;
		}
		*/
		//document.getElementById("orbi_id").value="MS0002";
		//document.getElementById("actionId").value="100";
		
		//var requestID=document.getElementById("actionId").value;

		
		//document.myForm.action="/MtSubscribeController?unidID="+unidID+"&cust_name="+cust_name+"&Nar_CIF="+Nar_CIF+"&sftpFolderPathMT940="+sftpFolderPathMT940+"&sftpilinkPublicTxtMT940="+sftpilinkPublicTxtMT940+"&placeText="+placeText+"&sftpFileFormatPreviewMT940="+sftpFileFormatPreviewMT940+"&placeTextCbx="+placeTextCbx+"&cbxFileFormatUniqueTxtMT940="+cbxFileFormatUniqueTxtMT940+"&cbxFileFormatPreviewMT940="+cbxFileFormatPreviewMT940+"&fileLevelStoreFlag="+fileLevelStoreFlag+"&frdateMT940="+frdateMT940+"&tdateMT940="+tdateMT940+"&pageType="+pageType+"&RequestID="+requestID+"&sftpFolderPathMT942="+sftpFolderPathMT942 +"&sftpilinkPublicTxtMT942="+sftpilinkPublicTxtMT942+"&accountno="+accountno+"&accountdetails1="+accountdetails1+"&sftpFileFormatUniqueTxtMT942="+sftpFileFormatUniqueTxtMT942+"&placeText2="+placeText2
		//+"&sftpFileFormatPreviewMT942="+sftpFileFormatPreviewMT942+"&deliveryTimeMT942="+deliveryTimeMT942+"&firstCutOff="+firstCutOff+"&secondCutOff="+secondCutOff+"&thirdCutOff="+thirdCutOff+"&floorDebit="+floorDebit+"&floorCredit="+floorCredit+"&frdateMT942="+frdateMT942+"&tdateMT942="+tdateMT942+"&enabledMT940Flg="+enabledMT940Flg+"&enabledMT942Flg="+enabledMT942Flg+"&sftpMT940Flg="+sftpMT940Flg+"&encryptionMT940Flg="+encryptionMT940Flg+"&cbxMT940Flg="+cbxMT940Flg+"&generateMT940Stmt="+generateMT940Stmt+"&field61MT940="+field61MT940+"&sftpFileFormat01MT940="+sftpFileFormat01MT940+"&cbxFileFormat01MT940="+cbxFileFormat01MT940+"&field25MT940="+field25MT940
       // +"&sftpMT942Flg="+sftpMT942Flg+"&encryptionMT942Flg="+encryptionMT942Flg+"&sftpFileFormat01MT942="+sftpFileFormat01MT942+"&delTimeHourBasesMT942="+delTimeHourBasesMT942
       // +"&delTimeSlotBasesMT942="+delTimeSlotBasesMT942+"&generateMT942Stmt="+generateMT942Stmt+"&field25MT942="+field25MT942+"&field34MT942="+field34MT942  +"&field61MT942="+field61MT942+"&field90MT942="+field90MT942+"&msgTypeMT940="+msgTypeMT940+"&cbxMt940="+cbxMt940+"&sftpMt940="+sftpMt940+"&sftpMt942="+sftpMt942+"&msgTypeMT942="+msgTypeMT942
		//+"&sftpFileFormatUniqueTxtMT940="+sftpFileFormatUniqueTxtMT940+"&ref_no="+ref_no;
			//document.myForm.submit();
		
		
		//openDialog("MtSubscribeController?actionId=100&orbi_id=MS0002&unidID="+unidID+"&cust_name="+cust_name+"&Nar_CIF="+Nar_CIF+"&sftpFolderPathMT940="+sftpFolderPathMT940+"&sftpilinkPublicTxtMT940="+sftpilinkPublicTxtMT940+"&placeText="+placeText+"&sftpFileFormatPreviewMT940="+sftpFileFormatPreviewMT940+"&placeTextCbx="+placeTextCbx+"&cbxFileFormatUniqueTxtMT940="+cbxFileFormatUniqueTxtMT940+"&cbxFileFormatPreviewMT940="+cbxFileFormatPreviewMT940+"&fileLevelStoreFlag="+fileLevelStoreFlag+"&frdateMT940="+frdateMT940+"&tdateMT940="+tdateMT940+"&pageType="+pageType+"&RequestID=100&sftpFolderPathMT942="+sftpFolderPathMT942 +"&sftpilinkPublicTxtMT942="+sftpilinkPublicTxtMT942+"&accountno="+accountno+"&accountdetails1="+accountdetails1+"&sftpFileFormatUniqueTxtMT942="+sftpFileFormatUniqueTxtMT942+"&placeText2="+placeText2+"&sftpFileFormatPreviewMT942="+sftpFileFormatPreviewMT942+"&deliveryTimeMT942="+deliveryTimeMT942+"&firstCutOff="+firstCutOff+"&secondCutOff="+secondCutOff+"&thirdCutOff="+thirdCutOff+"&floorDebit="+floorDebit+"&floorCredit="+floorCredit+"&frdateMT942="+frdateMT942+"&tdateMT942="+tdateMT942+"&enabledMT940Flg="+enabledMT940Flg+"&enabledMT942Flg="+enabledMT942Flg+"&sftpMT940Flg="+sftpMT940Flg+"&encryptionMT940Flg="+encryptionMT940Flg+"&cbxMT940Flg="+cbxMT940Flg+"&generateMT940Stmt="+generateMT940Stmt+"&field61MT940="+field61MT940+"&sftpFileFormat01MT940="+sftpFileFormat01MT940+"&cbxFileFormat01MT940="+cbxFileFormat01MT940+"&field25MT940="+field25MT940+"&sftpMT942Flg="+sftpMT942Flg+"&encryptionMT942Flg="+encryptionMT942Flg+"&sftpFileFormat01MT942="+sftpFileFormat01MT942+"&delTimeHourBasesMT942="+delTimeHourBasesMT942+"&delTimeSlotBasesMT942="+delTimeSlotBasesMT942+"&generateMT942Stmt="+generateMT942Stmt+"&field25MT942="+field25MT942+"&field34MT942="+field34MT942  +"&field61MT942="+field61MT942+"&field90MT942="+field90MT942+"&msgTypeMT940="+msgTypeMT940+"&cbxMt940="+cbxMt940+"&sftpMt940="+sftpMt940+"&sftpMt942="+sftpMt942+"&msgTypeMT942="+msgTypeMT942+"&sftpFileFormatUniqueTxtMT940="+sftpFileFormatUniqueTxtMT940+"&ref_no="+ref_no,'300','150');
		
		
		  
		openDialog("MtSubscribeController?actionId=100&orbi_id=MS0002&unidID="+unidID+"&cust_name="+cust_name+"&Nar_CIF="+Nar_CIF+"&sftpFolderPathMT940="+sftpFolderPathMT940+"&sftpilinkPublicTxtMT940="+sftpilinkPublicTxtMT940+"&placeText="+placeText+"&sftpFileFormatPreviewMT940="+sftpFileFormatPreviewMT940+"&placeTextCbx="+placeTextCbx+"&cbxFileFormatUniqueTxtMT940="+cbxFileFormatUniqueTxtMT940+"&cbxFileFormatPreviewMT940="+cbxFileFormatPreviewMT940+"&fileLevelStoreFlag="+fileLevelStoreFlag+"&frdateMT940="+frdateMT940+"&tdateMT940="+tdateMT940+"&pageType="+pageType+"&RequestID=100&sftpFolderPathMT942="+sftpFolderPathMT942 +"&sftpilinkPublicTxtMT942="+sftpilinkPublicTxtMT942+"&sftpFileFormatUniqueTxtMT942="+sftpFileFormatUniqueTxtMT942+"&placeText2="+placeText2+"&sftpFileFormatPreviewMT942="+sftpFileFormatPreviewMT942+"&deliveryTimeMT942="+deliveryTimeMT942+"&firstCutOff="+firstCutOff+"&secondCutOff="+secondCutOff+"&thirdCutOff="+thirdCutOff+"&floorDebit="+floorDebit+"&floorCredit="+floorCredit+"&frdateMT942="+frdateMT942+"&tdateMT942="+tdateMT942+"&enabledMT940Flg="+enabledMT940Flg+"&enabledMT942Flg="+enabledMT942Flg+"&sftpMT940Flg="+sftpMT940Flg+"&encryptionMT940Flg="+encryptionMT940Flg+"&cbxMT940Flg="+cbxMT940Flg+"&generateMT940Stmt="+generateMT940Stmt+"&field61MT940="+field61MT940+"&sftpFileFormat01MT940="+sftpFileFormat01MT940+"&cbxFileFormat01MT940="+cbxFileFormat01MT940+"&field25MT940="+field25MT940+"&sftpMT942Flg="+sftpMT942Flg+"&encryptionMT942Flg="+encryptionMT942Flg+"&sftpFileFormat01MT942="+sftpFileFormat01MT942+"&delTimeHourBasesMT942="+delTimeHourBasesMT942+"&delTimeSlotBasesMT942="+delTimeSlotBasesMT942+"&generateMT942Stmt="+generateMT942Stmt+"&field25MT942="+field25MT942+"&field34MT942="+field34MT942  +"&field61MT942="+field61MT942+"&field90MT942="+field90MT942+"&msgTypeMT940="+msgTypeMT940+"&cbxMt940="+cbxMt940+"&sftpMt940="+sftpMt940+"&sftpMt942="+sftpMt942+"&msgTypeMT942="+msgTypeMT942+"&sftpFileFormatUniqueTxtMT940="+sftpFileFormatUniqueTxtMT940+"&ref_no="+ref_no+"&accountdetails1="+accountdetails1+"&swiftMt942="+swiftMt942+"&swiftMt940="+swiftMt940+"&biccodeDetails1="+bicarray+"&biccodeDetails2="+bicarray2+"&email940="+email940+"&email942="+email942+"&frequency940="+frequency940,'300','150');
		
       }
	   
       
 



	function validateNumberWithDot(el,e)  { 
	var charCode;
    if (e.keyCode > 0) {
        charCode = e.which || e.keyCode;
    }
    else if (typeof (e.charCode) != "undefined") {
        charCode = e.which || e.keyCode;
    }
    if (charCode == 46){
    	if ((el.value) && (el.value.indexOf('.') >= 0))
            return false;
    	else
    		return true;
    }
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    else{
    	if((el.value) && (el.value.indexOf('.') < 0 && el.value.length > 15))
    	return false;
    }
    val = el.value;
	if (!val.match(/^(\d{0,16})(\.{0,1}\d{0,3})$/)) {
		return false;
	} else {
		return true;
	}	
    return true;
}

function validateSpecialCharacters(elementRef)
{
		var checkValue = new String(elementRef.value);
		var newValue = '';
		for (var i=0; i<checkValue.length; i++)
		{
		var currentChar = checkValue.charAt(i);
		if ( (currentChar == '|') )
			{
				alertPopup('Special Character not allowed');
				elementRef.value = newValue;
				return;
			}
		}
}


       
function capture(frmname)
{
	
 if (navigator.appName == 'Netscape')
 {
  document.captureEvents(Event.KEYPRESS);
  document.onkeypress = FloatCheckStrict;
 }
 frmname.onkeypress = FloatCheckStrict;
}
function FloatCheckStrict(e)
{
	if (navigator.appName == 'Netscape')	keyascii = e.which;
	else	keyascii = window.event.keyCode;
	
	var targ;
	var val;
	if ((keyascii > 47 && keyascii <=57) || (keyascii == 8) || (keyascii == 0))	
		return true;
	else if (keyascii == 46) {
		targ = getTargetFromEvent(e);
		val = targ.value;
		if(val.indexOf('.')===-1) return true;  //Already . is present
		else return false;
	}else	
		return false;
}
function getTargetFromEvent(e){
	var targ;
	if (!e) var e = window.event;
	if (e.target) targ = e.target;
	else if (e.srcElement) targ = e.srcElement;
	if (targ.nodeType == 3) // defeat Safari bug
		targ = targ.parentNode;
	return targ;
}

function doClear(){
	location.reload();
}
function doClearTime(e){
	var id=e.id;
	var val=e.value;
	
	var cc=document.getElementById(id).checked;
	
	alert("****new cha****"+id+"****val**"+val+"***************"+cc);
	if(id=='defaultTime'){
	alert("if");
		document.getElementById("customTime").value="N";
		document.getElementById("customTime").checked=false;
		document.getElementById("custtime").value="";
		alert("*****id********"+id+"****val******"+val);
	}
	if(id=='customTime')
	{
		document.getElementById("deftime").value="";
		document.getElementById("defaultTime").value="N";
		document.getElementById("defaultTime").checked=false;
		alert("*****id********"+id+"****val******"+val);
	}
}
function onCifSearchClick(){ //For new mode
	var x="/Gateway?actionId=0&orbi_id=COB002&PARAM_FLAG=Y&srch_flag=CIF&Search=Y&FetchData=N&cif_no=&cif_name=%&unit_id=<%=Constants.UNIT_ID%>";
	var y="dependent=yes,scrollbars=yes,width=700,height=600,top=100,left=250";
	try{
		openDialog(x,500,500,y);
//This page calls back the ordinary function checkForAuthCIF
	}

	catch(e){} //Its throwing some exception due to some bad coding in modal.js
};

function checkForAuthCIF(cif, customer_name, address1, address2, address3, address4, city,country, pin_code, primary_fax, primary_phone, primary_cell_phone,primary_email, cif_status, gcif,gcif_name, onboardFlg,customer_category,routing_opt,corp_type,release_opt,str_encrypt,sftp_flag){
	 $('#Nar_CIF').val(cif);
	 $('#cust_name').val(customer_name);
	 //loadAccountDetails(cif);
getPlaceHolders(cif);
}

function getPlaceHolders(cifNo)
{
	var cifNo=document.myForm.Nar_CIF.value;
	var UnitId='<%=unitid%>'
	if (cifNo!==null && cifNo!=="")
	{
		//alert(cifNo);
	var url = "MtSubscribeController?RequestID=3&Nar_CIF="+cifNo+"&unitId="+UnitId;
		if (typeof XMLHttpRequest != "undefined")
		{
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req.open("POST", url, true);
	req.onreadystatechange = callback_PlaceHolders;
	req.send(null);
}

function callback_PlaceHolders()
{
	if (req.readyState == 4)
	{
		if (req.status == 200)
		{
			renderPlaceHolders() ;
		}
	}
}

function renderPlaceHolders()
{
			var narrationPlaceHolder=document.getElementById("narrationPlaceHolder");
				var responsedata =req.responseText;
				
				
					//alert(responsedata);


				var responselist = responsedata.split("@");
				
				for(var i=0 ;i<responselist.length;i++){
						var combotxt=responselist[i];
					     var combovalue=responselist[i];
//alert("combovalue"+combovalue);
					var n = combovalue.length;
					//alert("n"+n);
					
				if(combovalue !== "" && n>1){
			combovalue = combovalue.substr(combovalue,combovalue.indexOf('-'));
			//alert("combovalue>>>"+combovalue);	
					
					
					
						var comboitem = document.createElement("option");
						comboitem.text = combotxt;
						comboitem.value =combotxt;
						//alert(comboitem.text);
						comboitem.title ='Double click to add';
						narrationPlaceHolder.options.add(comboitem);
										 $("#narrationText").html("");
											
				}
				//$("#narrationText").html("");
				}	
	
	
}

function confirmClose(){
	jQuery.close = function (){onClickYes();}
	JCopsConfirmPopup("Do you want to Close?",jQuery.close);	
}
function onClickYes(){
	location.href='Gateway?orbi_id=CH00040&FetchData=N';
}

function onClickNo(){}
	
function addAccPlaceHolderItem(myForm)  
{
	var result ="";
	for (var i = 0; i < myForm.narrationPlaceHolder.length; i++)
	{
		if (myForm.narrationPlaceHolder.options[i].selected)
		{
			result =myForm.narrationPlaceHolder.options[i].value;
		}
	}
	var aPlace=document.myForm.narrationPlaceHolder.value;
	var narrationText=document.getElementById('narrationText').value;
	//alert(narrationText);
	aPlace=narrationText+result;
		//alert(aPlace);
	document.getElementById('narrationText').value = aPlace;

	document.getElementById('narrationText').focus();
	if(validateAcc())
	{
		return false;
	}
	return true;
}

function validateAcc()
{
	var NullAdd=myForm.narrationPlaceHolder.length;
	if(NullAdd==0)
	{
		confirm("Place Holder is Empty");
	}
	if(isEmpty(document.myForm.narrationPlaceHolder.value))
	{
		confirm("Please Select Place Holder");
		document.myForm.narrationPlaceHolder.focus();
		return true;
	}
}
function removeAccPlaceHolderItem(myForm)
{

	var aText = document.getElementById('narrationText').value;
	if(aText!=null && aText!=""){
	/*while(aText.indexOf("$") != -1)
	{
		aText=aText.replace("$","!");
	}*/
	var result =""; 
	var aTextFinal="";
	for (var i = 0; i < myForm.narrationPlaceHolder.length; i++) 
	{
		
		if (myForm.narrationPlaceHolder.options[i].selected) 
		{
			
			result =myForm.narrationPlaceHolder.options[i].value+"#"; 
		}
	}
	 var  dumbyResult =  result.split("#");
   for (var i = 0; i < dumbyResult.length-1; i++) 
			
		{
			
			while(aText.indexOf(dumbyResult[i])!== -1)
	       {
		    aText=aText.replace(dumbyResult[i],'');
			
	        } 
		
		
		}
		
		document.getElementById('narrationText').value=aText.replace(/\s+/,"");
	var NullRemove=myForm.narrationPlaceHolder.length;
	if(NullRemove==0)
	{
		confirm(" Place Holder is Empty");
	}
	if(isEmpty(document.myForm.narrationPlaceHolder.value))
	{
		confirm("Please Select Place Holder for Remove");
		document.myForm.narrationPlaceHolder.focus();
		return true;
	}
	}
}
function callAccResetNarrationText()
{
	document.getElementById('narrationText').value="";
	return;
}


function getHolders()
{
	
	var id="MTSUB";
	var UnitId='<%=unitid%>'
	if (id!==null && id!=="")
	{
		
		var url = "MtSubscribeController?RequestID=4&Event_Id="+id+"&unitId="+UnitId;
		if (typeof XMLHttpRequest != "undefined")
		{
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req.open("POST", url, true);
	req.onreadystatechange = callback_Holders;
	req.send(null);
}
function callback_Holders()
{
	if (req.readyState == 4)
	{
		if (req.status == 200)
		{
			renderHolders() ;
		}
	}
}

function renderHolders()
{
			var placeHolderAcc=document.getElementById("placeHolderAcc");
			var placeHoldercbx=document.getElementById("placeHoldercbx");
				var responsedata =req.responseText;
							//alert(responsedata);

				var responselist = responsedata.split("@");
				//alert(responselist);
				var combotxt=responselist[0].split("@");
				if(typeof responselist[1]!=='undefined' ){
					var response_arr_Desc=responselist[1].split("%%");
					var placeHolderDesc=response_arr_Desc[0].split("$");
						//alert(placeHolderDesc);

					var placeHolder=combotxt[0].split("$");
											//alert(placeHolder);

					$("#placeHolderAcc").html("");
					for(var j=0;j<placeHolder.length;j++){
						var comboitem = document.createElement("option");
						comboitem.text = placeHolderDesc[j];
						comboitem.value =placeHolder[j];
						comboitem.title ='Double click to add';
						placeHolderAcc.options.add(comboitem);
					 }
					$("#placeHoldercbx").html("");
					for(var j=0;j<placeHolder.length;j++){
						var comboitem = document.createElement("option");
						comboitem.text = placeHolderDesc[j];
						comboitem.value =placeHolder[j];
						comboitem.title ='Double click to add';
						placeHoldercbx.options.add(comboitem);
					 }
					 	//$("#placeText").html("");
				}
				/*else{
					$("#placeHolderAcc2").html("");
					$("#placeText2").html("");
				}*/
}

function addPlaceHolderItem(myForm)
{
	var result ="";
	for (var i = 0; i < myForm.placeHolderAcc.length; i++)
	{
		if (myForm.placeHolderAcc.options[i].selected)
		{
			result +="$$"+myForm.placeHolderAcc.options[i].value;
		}
	}
	var aPlace=document.myForm.placeHolderAcc.value;
	var placeText=document.getElementById('placeText').value;
	//alert(placeText);
	aPlace=placeText+result;
		//alert(aPlace);
	if(aPlace.indexOf(tag20_Sequence)!= -1){
	aPlace=aPlace.replace(tag20_Sequence,"");
	}	
	aPlace=aPlace+tag20_Sequence;
	document.getElementById('placeText').value = aPlace;

	document.getElementById('placeText').focus();
	if(validate())
	{
		return false;
	}
	return true;
}

function validate()
{
	var NullAdd=myForm.placeHolderAcc.length;
	if(NullAdd==0)
	{
		confirm("Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHolderAcc.value))
	{
		confirm("Please Select Place Holder");
		document.myForm.placeHolderAcc.focus();
		return true;
	}
}
function isEmpty(str)
{
	if(str==null || str=="")
	{
		return true;
	}
	else
	{
		return false;
	}
}
function setCursorPositionToEnd(elementId)
{
	var elementRef = document.getElementById(elementId);
	var cursorPosition = document.getElementById(elementId).value.length;
	if ( elementRef != null )
	{
		if ( elementRef.createTextRange )
		{
			var textRange = elementRef.createTextRange();
			textRange.move('character', cursorPosition);
			textRange.select();
		}
		else
		{
			if ( elementRef.selectionStart )
			{
				elementRef.focus();
				elementRef.setSelectionRange(cursorPosition, cursorPosition);
			}
			else
			{
				elementRef.focus();
			}
		}
	}
}
function removePlaceHolderItem(myForm)
{

	var aText = document.getElementById('placeText').value;
	//alert(aText);
	while(aText.indexOf("$") != -1)
	{
		aText=aText.replace("$","!");
	}
	var result =""; 
	for (var i = 0; i < myForm.placeHolderAcc.length; i++) 
	{
		
		if (myForm.placeHolderAcc.options[i].selected) 
		{
			
			result +="!!"+myForm.placeHolderAcc.options[i].value+"!!"; 
		}
	}

	var aPlace = document.myForm.placeHolderAcc.value;
	if(result.length==0)
	{
		confirm("Please Select Place Holder for Remove");
		return true;
	}
	var aPlace1=result;
	if(aPlace1.length!=0){ 
	var re=new RegExp('(.*)'+aPlace1+'(.*)$');
	aText=aText.replace(re,'$1$2');
	while(aText.indexOf(aPlace)!= -1)
	{
		aText=aText.replace(re,'$1$2');
	}
	var aTextFinal=aText.replace(re,'$1$2');
	while(aTextFinal.indexOf("!") != -1)
	{
		aTextFinal=aTextFinal.replace("!","$");
	}
	document.getElementById('placeText').value=aTextFinal;
    }
	var NullRemove=myForm.placeHolderAcc.length;
	if(NullRemove==0)
	{
		confirm(" Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHolderAcc.value))
	{
		confirm("Please Select Place Holder for Remove");
		document.myForm.placeHolderAcc.focus();
		return true;
	}
}
function callResetNarrationText()
{
	document.getElementById('placeText').value="";
	return;
}
function getCBXHolders()
{
	var id="MTSUB";
	var UnitId='<%=unitid%>'
	if (id!==null && id!=="")
	{
		//alert(id);
		//alert(debitCreditType);
	var url = "MtSubscribeController?RequestID=4&Event_Id="+id+"&unitId="+UnitId;
		if (typeof XMLHttpRequest != "undefined")
		{
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req.open("POST", url, true);
	req.onreadystatechange = callback_CbxHolders;
	req.send(null);
}
function callback_CbxHolders()
{
	if (req.readyState == 4)
	{
		if (req.status == 200)
		{
			renderCbxHolders() ;
		}
	}
}

function renderCbxHolders()
{
			var placeHoldercbx=document.getElementById("placeHoldercbx");
				var responsedata =req.responseText;
							//alert(responsedata);

				var responselist = responsedata.split("@");
				var combotxt=responselist[0].split("@");
				if(typeof responselist[1]!=='undefined' ){
					var response_arr_Desc=responselist[1].split("%%");
					var placeHolderDesc1=response_arr_Desc[0].split("$");
						//alert(placeHolderDesc);

					var placeHolder1=combotxt[0].split("$");
											//alert(placeHolder);

					$("#placeHoldercbx").html("");
					for(var j=0;j<placeHolder1.length;j++){
						var comboitem = document.createElement("option");
						comboitem.text = placeHolderDesc1[j];
						comboitem.value =placeHolder1[j];
						comboitem.title ='Double click to add';
						placeHoldercbx.options.add(comboitem);
					 }
					 	//$("#placeTextCbx").html("");
				}else{
					$("#placeHoldercbx").html("");
					//$("#placeTextCbx").html("");
				}
}

function addPlaceHolderCbxItem(myForm)
{
	var result ="";
	for (var i = 0; i < myForm.placeHoldercbx.length; i++)
	{
		if (myForm.placeHoldercbx.options[i].selected)
		{
			result +="$$"+myForm.placeHoldercbx.options[i].value;
		}
	}
	var aPlace=document.myForm.placeHoldercbx.value;
	var placeTextCbx=document.getElementById('placeTextCbx').value;
	//alert(placeTextCbx);
	aPlace=placeTextCbx+result;
	if(aPlace.indexOf(tag20_Sequence)!= -1){
	aPlace=aPlace.replace(tag20_Sequence,"");
	}
	aPlace=aPlace+tag20_Sequence;
		//alert(aPlace);
	document.getElementById('placeTextCbx').value = aPlace;

	document.getElementById('placeTextCbx').focus();
	if(validatecbx())
	{
		return false;
	}
	return true;
}

function validatecbx()
{
	var NullAdd=myForm.placeHoldercbx.length;
	if(NullAdd==0)
	{
		confirm("Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHoldercbx.value))
	{
		confirm("Please Select Place Holder");
		document.myForm.placeHoldercbx.focus();
		return true;
	}
}


function removePlaceHolderCbxItem(myForm)
{
     
	var aText = document.getElementById('placeTextCbx').value;
	//alert(aText);
	while(aText.indexOf("$") != -1)
	{
		aText=aText.replace("$","!");
	}
	var result =""; 
	for (var i = 0; i < myForm.placeHoldercbx.length; i++) 
	{
		
		if (myForm.placeHoldercbx.options[i].selected) 
		{
			
			result +="!!"+myForm.placeHoldercbx.options[i].value+"!!"; 
		}
	}

	var aPlace = document.myForm.placeHoldercbx.value;
	//added for remove button
	if(result.length==0)
	{
		confirm("Please Select Place Holder for Remove");
		return true;
	}
	var aPlace1=result;
	if(aPlace1.length!=0){   //added for remove 
	var re=new RegExp('(.*)'+aPlace1+'(.*)$');
	aText=aText.replace(re,'$1$2');
	while(aText.indexOf(aPlace)!= -1)
	{
		aText=aText.replace(re,'$1$2');
	}
	var aTextFinal=aText.replace(re,'$1$2');
	while(aTextFinal.indexOf("!") != -1)
	{
		aTextFinal=aTextFinal.replace("!","$");
	}
	document.getElementById('placeTextCbx').value=aTextFinal;
    }
	var NullRemove=myForm.placeHoldercbx.length;
	if(NullRemove==0)
	{
		confirm(" Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHoldercbx.value))
	{
		confirm("Please Select Place Holder for Remove");
		document.myForm.placeHoldercbx.focus();
		return true;
	}
}
function callResetNarrationCbxText()
{
	document.getElementById('placeTextCbx').value="";
	return;
}
function getAccountDetails()
{
	var cifNo='<%=cif%>';
	var UnitId='<%=unitid%>';
	var refNo='<%=ref_no%>';
	if (cifNo!==null && cifNo!=="")
	{
	var url = "MtSubscribeController?RequestID=3&Nar_CIF="+cifNo+"&unitId="+UnitId+"&refNo="+refNo;
		if (typeof XMLHttpRequest != "undefined")
		{
			req3 = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req3 = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req3.open("POST", url, true);
	req3.onreadystatechange = callback_AccountDetails1;
	req3.send(null);
}
function callback_AccountDetails1()
{  
	if (req3.readyState == 4)
	{
		if (req3.status == 200)
		{
           callback_AccountDetails2();			// 1st account list grid
           
		}
	}
}
function callback_AccountDetails2()
{   
	var responsedata =req3.responseText;
	//alert("responsedata>>"+responsedata);
	var responselist = responsedata.split("@");
	//alert("responsedata>>"+responselist);
	$("#narrationPlaceHolder").html("");
	for(var j=0;j<responselist.length;j++){
		var comboitem = document.createElement("option");
		comboitem.text = responselist[j];
		comboitem.value =responselist[j];
		//comboitem.title ='Double click to add';
		document.getElementById("narrationPlaceHolder").options.add(comboitem);
	 }
}
function getExistingAccDetails()
{
	//alert("getExistingAccDetails");
	
	
	var cif='<%=cif%>';
	var UnitId='IGTBAE';
	var refNo='<%=ref_no%>';

	
	//alert("cifNo1>>"+cif);
//alert("UnitId2>>"+UnitId);
	//alert("refNo3>>"+refNo);
	if (cif!=null && cif!="")
	{
		var url = "MtSubscribeController?RequestID=6&cif="+cif+"&unitId="+UnitId+"&refNo="+refNo;
		if (typeof XMLHttpRequest != "undefined")
		{
			req4 = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req4 = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req4.open("POST", url, true);
	req4.onreadystatechange = resExistingAccountDetails;
	req4.send(null);
}
function resExistingAccountDetails()
{   
	//alert("resExistingAccountDetails>>");
	if (req4.readyState == 4)
	{
		if (req4.status == 200)
		{
          addExistingAccountDetails();			// 1st account list grid
		  }
	}
}

function addExistingAccountDetails()
{  
	var respExistingAccouns =req4.responseText;
    //alert("respExistingAccouns>>"+respExistingAccouns);
	var responselist = respExistingAccouns.split(",");
//alert("responselist>>"+responselist.length);
	$("narrationText").html("");
			for(var j=0;j<responselist.length;j++){
				var comboitem = document.createElement("option");
				comboitem.text = responselist[j].replace("@","");
				comboitem.value =responselist[j].replace("@","");
				//comboitem.title ='Double click to add';
				document.getElementById("narrationText").options.add(comboitem);
			 }
}
/* SWIT changes 30APR 2021  START*/
function getExistingBicDetails()
{
	var cif='<%=cif%>';
	var UnitId='IGTBAE';
	var refNo='<%=ref_no%>';

	if (cif!=null && cif!="")
	{
		var url = "MtSubscribeController?RequestID=7&cif="+cif+"&unitId="+UnitId+"&refNo="+refNo;
		if (typeof XMLHttpRequest != "undefined")
		{
			req5 = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req5 = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req5.open("POST", url, true);
	req5.onreadystatechange = resExistingBicDetails;
	req5.send(null);
}
function resExistingBicDetails()
{   
	//alert("resExistingAccountDetails>>");
	if (req5.readyState == 4)
	{
		if (req5.status == 200)
		{
          addExistingBicDetails();
          myFunctionTest(); 
		  myFunctionTestMT();		  // 1st account list grid
         }
	}
}

function addExistingBicDetails()
{  
 var  BicDetsilsList;
 var respExistingBic;
 var respExistingBicMt942;
 
 if(req5.responseText!=="" && typeof req5.responseText!=="undefined"){
     BicDetsilsList =  req5.responseText.split("||");
	 respExistingBic =BicDetsilsList[0];
	  if (BicDetsilsList[1]=="\n"){
		BicDetsilsList[1]=BicDetsilsList[1]==""; 
	 }
     respExistingBicMt942 =BicDetsilsList[1];
	 if(typeof respExistingBic!=="undefined" && respExistingBic!==""){
	 responseBiclist = respExistingBic.split("@");
	 }
	 if(typeof respExistingBicMt942!=="undefined" && respExistingBicMt942!=="" ){
	 responseBiclistMt942 = respExistingBicMt942.split("@");
	 }
	
  }
		      

}
/* SWIT changes 30APR 2021 END*/
function getHolders2()
{
	var id="MTSUB";
	var UnitId='<%=unitid%>'
	if (id!==null && id!=="")
	{
		//alert(id);
		//alert(debitCreditType);
	var url = "MtSubscribeController?RequestID=4&Event_Id="+id+"&unitId="+UnitId;
		if (typeof XMLHttpRequest != "undefined")
		{
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	req.open("POST", url, true);
	req.onreadystatechange = callback_Holders2;
	req.send(null);
}
function callback_Holders2()
{
	if (req.readyState == 4)
	{
		if (req.status == 200)
		{
			renderHolders2() ;
		}
	}
}

function renderHolders2()
{
			var placeHolderAcc2=document.getElementById("placeHolderAcc2");
				var responsedata =req.responseText;
							//alert(responsedata);

				var responselist = responsedata.split("@");
				var combotxt=responselist[0].split("@");
				if(typeof responselist[1]!=='undefined' ){
					var response_arr_Desc=responselist[1].split("%%");
					var placeHolderDesc2=response_arr_Desc[0].split("$");
						//alert(placeHolderDesc);

					var placeHolder2=combotxt[0].split("$");
											//alert(placeHolder);

					$("#placeHolderAcc2").html("");
					for(var j=0;j<placeHolder2.length;j++){
						var comboitem = document.createElement("option");
						comboitem.text = placeHolderDesc2[j];
						comboitem.value =placeHolder2[j];
						comboitem.title ='Double click to add';
						placeHolderAcc2.options.add(comboitem);
					 }
					 	//$("#placeText2").html("");
				}/*else{
					$("#placeHolderAcc2").html("");
					$("#placeText2").html("");
				}*/
}

function addPlaceHolderItem2(myForm)
{
	
	var result ="";
	for (var i = 0; i < myForm.placeHolderAcc2.length; i++)
	{
		if (myForm.placeHolderAcc2.options[i].selected)
		{
			result +="$$"+myForm.placeHolderAcc2.options[i].value;
		}
	}
	var aPlace=document.myForm.placeHolderAcc2.value;
	var placeText2=document.getElementById('placeText2').value;
	//alert(placeText2);
	aPlace=placeText2+result;
	if(aPlace.indexOf(tag20_Sequence)!= -1){
	aPlace=aPlace.replace(tag20_Sequence,"");
	}
	aPlace=aPlace+tag20_Sequence;
	document.getElementById('placeText2').value = aPlace;

	document.getElementById('placeText2').focus();
	if(validate2())
	{
		alert("mt942 place holder add button return false")
		return false;
	}
	return true;
}

function validate2()
{
	var NullAdd=myForm.placeHolderAcc2.length;
	if(NullAdd==0)
	{
		confirm("Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHolderAcc2.value))
	{
		confirm("Please Select Place Holder");
		document.myForm.placeHolderAcc2.focus();
		return true;
	}
}


function removePlaceHolderItem2(myForm)
{

	var aText = document.getElementById('placeText2').value;
	while(aText.indexOf("$") != -1)
	{
		aText=aText.replace("$","!");
	}
	var result =""; 
	for (var i = 0; i < myForm.placeHolderAcc2.length; i++) 
	{
		
		if (myForm.placeHolderAcc2.options[i].selected) 
		{
			
			result +="!!"+myForm.placeHolderAcc2.options[i].value+"!!"; 
		}
	}
	var aPlace = document.myForm.placeHolderAcc2.value;
	//added for remove button
	if(result.length==0)
	{
		confirm("Please Select Place Holder for Remove");
		return true;
	}
	var aPlace1=result;
	if(aPlace1.length!=0){   //added for remove 
	var re=new RegExp('(.*)'+aPlace1+'(.*)$');
	aText=aText.replace(re,'$1$2');
	while(aText.indexOf(aPlace)!= -1)
	{
		aText=aText.replace(re,'$1$2');
	}
	
	var aTextFinal=aText.replace(re,'$1$2');
	while(aTextFinal.indexOf("!") != -1)
	{
		aTextFinal=aTextFinal.replace("!","$");
	}
	document.getElementById('placeText2').value=aTextFinal;
    }
	var NullRemove=myForm.placeHolderAcc2.length;
	
	if(NullRemove==0)
	{
		confirm(" Place Holder is Empty");
	}
	if(isEmpty(document.myForm.placeHolderAcc2.value))
	{
		confirm("Please Select Place Holder for Remove");
		document.myForm.placeHolderAcc2.focus();
		return true;
	}
}
function callResetNarrationText2()
{
	document.getElementById('placeText2').value="";
	return;
}
function chkdel(){
	

	if( document.myForm.deltimeflghourval.checked == false){

					

	confirm("Please check the Delivery time");

	}
}



/*function defaultZero() {
if(document.getElementById("fieldBoth").checked==true){	
document.getElementById("floorDebit").value ="0";
document.getElementById("floorCredit").value="0";
}else{
document.getElementById("floorDebit").value ="";
document.getElementById("floorCredit").value="";
document.myForm.floorDebit.disabled=true;
document.myForm.floorCredit.disabled=true;	
}
}*/

function enablePayemntsPortal(obj){
 if(obj.checked==true){

	//if( document.myForm.fieldBoth.checked == true)

				document.myForm.floorDebit.disabled=false;
				document.myForm.floorCredit.disabled=false;
				document.getElementById("fieldSingle").checked = false;
}
}
function disablePayemntsPortal(obj){
 if(obj.checked==true){
                document.myForm.floorDebit.disabled=true;
				document.myForm.floorCredit.disabled=true;
				 document.myForm.floorDebit.value='';
				 document.myForm.floorCredit.value='';
				 document.getElementById("fieldBoth").checked = false;

}
}
function chkcbx(obj){
	
	if(obj.checked==true){
//getCBXHolders(obj);


	}
}
function validateSpecialCharacters(elementRef)
{
		var checkValue = new String(elementRef.value);
		var newValue = '';
		for (var i=0; i<checkValue.length; i++)
		{
		var currentChar = checkValue.charAt(i);
		if ( (currentChar == '|') )
			{
				alertPopup('Special Character not allowed');
				elementRef.value = newValue;
				return;
			}
		}
}
function enableButton(){
	document.getElementById("RemoveSftp2").disabled=false;
}

function validateSftpPathMt940(filePath){
	
        var reg = /^(?:\.{2})?(?:\/\.{2})*(\/[a-z_\/A-Z0-9]+\/)+$/;
		var PathValue= filePath.value.replace(/\s+/,"");
         
		PathValue=PathValue.replace(/^\s\s*/, '').replace(/\s\s*$/, '');  // removing empty space by Don 
        //var slaceFlag =PathValue.charAt(PathValue.length-1).equals("/");
		//alert(slaceFlag);
	     if (PathValue!="") 
         {   
			if(reg.test(PathValue) == false)
			{
		     confirm("Invalid SFTP Path");
			 document.getElementById("line01").value='';
             return ;
			}
			

        }
		 
		document.getElementById("filePath").value=PathValue;
}
function validateSftpPathMt942(filePath){
	
        var reg = /^(?:\.{2})?(?:\/\.{2})*(\/[a-z_\/A-Z0-9]+\/)+$/;
		var PathValue= filePath.value.replace(/\s+/,"");
         
		PathValue=PathValue.replace(/^\s\s*/, '').replace(/\s\s*$/, '');  // removing empty space by Don 
        //var slaceFlag =PathValue.charAt(PathValue.length-1).equals("/");
		//alert(slaceFlag);
	     if (PathValue!="") 
         {   
			if(reg.test(PathValue) == false)
			{
		     confirm("Invalid SFTP Path");
			 document.getElementById("line05").value='';
             return ;
			}
			

        }
		 
		document.getElementById("filePath").value=PathValue;
}
function plholderdbclick2()
{
	var id;
	
	 
	id=document.myForm.placeHolderAcc2.value;
	if(id=="")
	{
		document.getElementById('placeText2').value="";
	}
	else{
		 if(alertMessage.indexOf(tag20_Sequence)!= -1){
	    alertMessage=alertMessage.replace(tag20_Sequence,"");
	    }
	   alertMessage=alertMessage+tag20_Sequence;
		var place =document.getElementById('placeText2').value += "$$"+id;
		if(place.indexOf(tag20_Sequence)!= -1){
	    place=place.replace(tag20_Sequence,"");
	    }
	     place=place+tag20_Sequence;
		document.getElementById('placeText2').value= place;
		
		document.getElementById('placeText2').focus();
		alertMessage=document.getElementById('placeText2').value;
		setCursorPositionToEnd('placeText2');
	}
}


function plholderdbclick()
{
	var id;
	
	 
	id=document.myForm.placeHolderAcc.value;
	if(id=="")
	{
		document.getElementById('placeText').value="";
	}
	else{
		  if(alertMessage.indexOf(tag20_Sequence)!= -1){
	    alertMessage=alertMessage.replace(tag20_Sequence,"");
	    }
	   alertMessage=alertMessage+tag20_Sequence;
		var place = document.getElementById('placeText').value += "$$"+id;
		if(place.indexOf(tag20_Sequence)!= -1){
	    place=place.replace(tag20_Sequence,"");
	    }
	     place=place+tag20_Sequence;
		document.getElementById('placeText').value= place;
		document.getElementById('placeText').focus();
		alertMessage=document.getElementById('placeText').value;
		setCursorPositionToEnd('placeText');
	}
}

function plholderdbclickCbx()
{
	var id;
	
	 
	id=document.myForm.placeHoldercbx.value;
	if(id=="")
	{
		document.getElementById('placeTextCbx').value="";
	}
	else{
		if(alertMessage.indexOf(tag20_Sequence)!= -1){
	    alertMessage=alertMessage.replace(tag20_Sequence,"");
	    }
	    alertMessage=alertMessage+tag20_Sequence;
		
		var place = document.getElementById('placeTextCbx').value += "$$"+id;
		if(place.indexOf(tag20_Sequence)!= -1){
	    place=place.replace(tag20_Sequence,"");
	    }
	     place=place+tag20_Sequence;
		document.getElementById('placeTextCbx').value= place;
		
		document.getElementById('placeTextCbx').focus();
		alertMessage=document.getElementById('placeTextCbx').value;
		setCursorPositionToEnd('placeTextCbx');
	}
}


function moveToAnotherListBox(listbox1, listbox2)
{
	
	var len = eval(listbox1).length;
	var field = eval(listbox2).options;

	var counter = eval(listbox2).options.length;

     
	
	for(i=0;i<len;i++)	
	{
		if(listbox1.options[i].selected == true)
		{		
            field[counter] = new Option(eval(listbox1).options[i].text,eval(listbox1).options[i].value);
			counter++;
			eval(listbox1).options[i] = null;
			i--;
			len--;
		
		}
	}
}


function myFunctionTest()
{
		//alert("In ");
		//var responsedata =req3.responseText;
		//var responselist = responsedata.split("@");
        var strTemp = "<table align = 'left'><tr><td>Account Number</td><td colspan=180></td><td align = 'right'>BiC Codes (Different BICs to be separated by comma)  </td></tr></table><div>&nbsp;&nbsp;</div>&nbsp;&nbsp;<br>";

		strTemp = strTemp + "<table align = 'center' width = '90%'>";

		var strTemp1 = "</table><br>";
		var accountTemp="";
	    var txtSelectedValuesObj ;
		//existing Bic 
		if(typeof responseBiclist =="undefined" || responseBiclist==""){
	    txtSelectedValuesObj=document.getElementById("narrationText"); 
		for(loopCount1 = 0 ; loopCount1 < txtSelectedValuesObj.length; loopCount1++ )
		{
			var gpssaEmpResValue = "<input type='text' style='background-color: white; width: 185px;'   tabindex='"+loopCount1+"' class='input' maxlength='130' id='element"+loopCount1+"'name='element"+loopCount1+"' value=''>";
			accountTemp = accountTemp+ "<tr><td>"+txtSelectedValuesObj[loopCount1].value+"</td><td>"+gpssaEmpResValue+"</td></tr>";	

		  }
		}	
	    else if(typeof responseBiclist!=="undefined" && responseBiclist!==""){
		 txtSelectedValuesObj= responseBiclist;
		for(loopCount1 = 0 ; loopCount1 < txtSelectedValuesObj.length; loopCount1++ ){
         var acc_array =txtSelectedValuesObj[loopCount1].split("$");
	      if(typeof acc_array[0]!=="undefined" && typeof acc_array[1]!=="undefined"){
			var gpssaEmpResValue = "<input type='text' style='background-color: white; width: 185px;'   tabindex='"+loopCount1+"' class='input' maxlength='130' id='element"+loopCount1+"'name='element"+loopCount1+"' value='"+acc_array[1]+"'>";
			
			accountTemp = accountTemp+ "<tr><td>"+acc_array[0]+"</td><td>"+gpssaEmpResValue+"</td></tr>";	
		      } 
		  }
		}
	accountTemp = strTemp+accountTemp+strTemp1;

	//alert("accountTemp>> "+accountTemp);
	 $("p").html(accountTemp);
	//document.getElementById("LoadedTable").innerHTML = accountTemp;
	
}
function myFunctionTestMT()
{

        var strTemp = "<table align = 'left'><tr><td>Account Number</td><td colspan=180></td><td align = 'right'>BiC Codes (Different BICs to be separated by comma)  </td></tr></table><div>&nbsp;&nbsp;</div>&nbsp;&nbsp;<br>";

		strTemp = strTemp + "<table align = 'center' width = '90%'>";
		var strTemp1 = "</table><br>";
		var accountTemp="";
		var txtSelectedValuesObj;
		var undefinedString; 
		 //undefinedString =""+responseBiclistMt942.value;
		if(typeof responseBiclistMt942 =="undefined" || responseBiclistMt942==""){
	    txtSelectedValuesObj=document.getElementById("narrationText");
		for(loopCount1 = 0 ; loopCount1 < txtSelectedValuesObj.length; loopCount1++ )
		{
         var gpssaEmpResValue = "<input type='text' style='background-color: white; width: 185px;'   tabindex='"+loopCount1+"' class='input' maxlength='130' id='elementMT942"+loopCount1+"'name='element"+loopCount1+"' value=''>";
		accountTemp = accountTemp+ "<tr><td>"+txtSelectedValuesObj[loopCount1].value+"</td><td>"+gpssaEmpResValue+"</td></tr>";	

		}
		}
        
	   else if(typeof responseBiclistMt942!=="undefined" && responseBiclistMt942!==""){	
		 txtSelectedValuesObj=responseBiclistMt942;
		for(loopCount1 = 0 ; loopCount1 < txtSelectedValuesObj.length; loopCount1++ )
		{	
         var acc_array =txtSelectedValuesObj[loopCount1].split("$");
		  if(typeof acc_array[0]!=="undefined" && typeof acc_array[1]!=="undefined"){

			var gpssaEmpResValue = "<input type='text' style='background-color: white; width: 185px;'   tabindex='"+loopCount1+"' class='input' maxlength='130' id='elementMT942"+loopCount1+"'name='element"+loopCount1+"' value='"+acc_array[1]+"'>";
			accountTemp = accountTemp+ "<tr><td>"+acc_array[0]+"</td><td>"+gpssaEmpResValue+"</td></tr>";	
		    }
		  }
       }	
	accountTemp = strTemp+accountTemp+strTemp1;

	//alert("accountTemp>> "+accountTemp);
	 $("sub").html(accountTemp);
	//document.getElementById("LoadedTable1").innerHTML = accountTemp;
	
}



var biccodeDetails="";

	

function enableSlot() {
  document.getElementById("FIRST_SLOT_HOUR_TIME").disabled = false;
  document.getElementById("SECOND_SLOT_HOUR_TIME").disabled = false;
  document.getElementById("THIRD_SLOT_HOUR_TIME").disabled = false;
  document.getElementById("deltimehour").disabled = true;
  var checkbox = document.getElementById('deltimeslot');
    if (checkbox.checked != false) {
	   document.getElementById("deltimehour").disabled = true;
	   document.getElementById("MtDel_Time").value = "--Select--";
	   document.getElementById("MtDel_Time").disabled = true;
	   document.getElementById("deltimehour").checked = false;
    }else{
	  document.getElementById("deltimehour").disabled = false;
	  
    }
}

function enableHour() {
   document.getElementById("MtDel_Time").disabled = false;

    var checkbox = document.getElementById('deltimehour');
    if (checkbox.checked != false) {
	   document.getElementById("deltimeslot").disabled = true;
  document.getElementById("FIRST_SLOT_HOUR_TIME").value = "";
  document.getElementById("SECOND_SLOT_HOUR_TIME").value = "";
  document.getElementById("THIRD_SLOT_HOUR_TIME").value = "";
  
  document.getElementById("FIRST_SLOT_HOUR_TIME").disabled = true;
  document.getElementById("SECOND_SLOT_HOUR_TIME").disabled = true;
  document.getElementById("THIRD_SLOT_HOUR_TIME").disabled = true;
    }else{
	  document.getElementById("deltimeslot").disabled = false;
    }
}

function disableMT940fields() {	

document.getElementById("line05").value =path ;
document.getElementById("ilinkPublicTxt2").value='';
document.getElementById("ilinkPublicTxt2").readOnly =false;
}

function defaultMT940Path() {
	//alert("defaultMT940Path");
var path='<%=staticPath%>';
document.getElementById("line01").value =path ;
}
function defaultMT942Path() {
	//alert("defaultMT940Path");
var path='<%=staticPath%>';
document.getElementById("line05").value =path ;
}

function validate_slot_hour1(){	
var element =document.getElementById("FIRST_SLOT_HOUR_TIME").value ;
if(element=="" && document.myForm.deltimeflgslotval.checked==true){
confirm("Please select slot hour");
return;	
}
if(element.length==1){
	 element= "0"+element;
   }
	if (!Array.prototype.indexOf)
{
  Array.prototype.indexOf = function(elt /*, from*/)
  {
    var len = this.length >>> 0;

    var from = Number(arguments[1]) || 0;
    from = (from < 0)
         ? Math.ceil(from)
         : Math.floor(from);
    if (from < 0)
      from += len;

    for (; from < len; from++)
    {
      if (from in this &&
          this[from] === elt)
        return from;
    }
    return -1;
  };
}   
if(hours_array.indexOf(element)==-1 && document.myForm.deltimeflgslotval.checked==true){   
confirm("Please select hour between 0 to 23");
document.getElementById("FIRST_SLOT_HOUR_TIME").value ="";
return;
} } 

function validate_slot_hour2(){	
var element =document.getElementById("SECOND_SLOT_HOUR_TIME").value;
if(element=="" && document.myForm.deltimeflgslotval.checked==true){
confirm("Please select slot hour");
return;	
}	
if(element.length==1){
     element= "0"+element;
    }
// for Index issue	
	if (!Array.prototype.indexOf)
{
  Array.prototype.indexOf = function(elt /*, from*/)
  {
    var len = this.length >>> 0;

    var from = Number(arguments[1]) || 0;
    from = (from < 0)
         ? Math.ceil(from)
         : Math.floor(from);
    if (from < 0)
      from += len;

    for (; from < len; from++)
    {
      if (from in this &&
          this[from] === elt)
        return from;
    }
    return -1;
  };
} 
//	
if(hours_array.indexOf(element)==-1 && document.myForm.deltimeflgslotval.checked==true ){
document.getElementById("SECOND_SLOT_HOUR_TIME").value ="";	
confirm("Please select hour between 0 to 23");
return;
} } 

function validate_slot_hour3(){	
var element =document.getElementById("THIRD_SLOT_HOUR_TIME").value;
if(element=="" && document.myForm.deltimeflgslotval.checked==true){
confirm("Please select slot hour");
return;	
}
if(element.length==1){
     element= "0"+element;
    }
	
// for Index issue	
	if (!Array.prototype.indexOf)
{
  Array.prototype.indexOf = function(elt /*, from*/)
  {
    var len = this.length >>> 0;

    var from = Number(arguments[1]) || 0;
    from = (from < 0)
         ? Math.ceil(from)
         : Math.floor(from);
    if (from < 0)
      from += len;

    for (; from < len; from++)
    {
      if (from in this &&
          this[from] === elt)
        return from;
    }
    return -1;
  };
} 
//	
	
if(hours_array.indexOf(element)==-1 && document.myForm.deltimeflgslotval.checked==true ){
 document.getElementById("THIRD_SLOT_HOUR_TIME").value ="";	
confirm("Please select hour between 0 to 23");
return;
} }  

function isNumberValidate(val)
{
	if(isNaN(val.value))
	{
		val.value='';
		errorPopup(3213,"Please enter only Numeric Values");
		val.focus();
		return;
	}
}

function validateNumberWithDot(el,e)  { 
	var charCode;
    if (e.keyCode > 0) {
        charCode = e.which || e.keyCode;
    }
    else if (typeof (e.charCode) != "undefined") {
        charCode = e.which || e.keyCode;
    }
    if (charCode == 46){
    	if ((el.value) && (el.value.indexOf('.') >= 0))
            return false;
    	else
    		return true;
    }
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    else{
    	if((el.value) && (el.value.indexOf('.') < 0 && el.value.length > 15))
    	return false;
    }
    val = el.value;
	if (!val.match(/^(\d{0,16})(\.{0,7}\d{0,8})$/)) {
		return false;
	} else {
		return true;
	}
    return true;
}




function (event) {
    var doPrevent = false;
    if (event.keyCode === 8) {
        var d = event.srcElement || event.target;
        if ((d.tagName.toUpperCase() === 'INPUT' && 
             (
                 d.type.toUpperCase() === 'TEXT' ||
                 d.type.toUpperCase() === 'PASSWORD' || 
                 d.type.toUpperCase() === 'FILE' || 
                 d.type.toUpperCase() === 'SEARCH' || 
                 d.type.toUpperCase() === 'EMAIL' || 
                 d.type.toUpperCase() === 'NUMBER' || 
                 d.type.toUpperCase() === 'DATE' )
             ) || 
             d.tagName.toUpperCase() === 'TEXTAREA') {
            doPrevent = d.readOnly || d.disabled;
        }
        else {
            doPrevent = true;
        }
    }
 
    if (doPrevent) {
        event.preventDefault();
    }
}
 /*End: Velu Changes:  PLCS-17320: Click any radio button should be clear in text box */
</script>
<title><%=MessageRetriever.getMessage("FLC_MODIFY_DETAILS",cwhLocale,1)%></title>
<script type="text/javascript" src="/orbionecore/common/scripts/modal.js"></script>
<SCRIPT language=JavaScript src="/corebank/customerOnBoard/UploadDocument.js"></SCRIPT>
</head>
<body style="padding:0;margin: 5px;overflow: auto" onLoad="modificationCall(); getHolders(); defaultZero();">
<form name='myForm'  id="myForm" action="" method="post">


<table cellpadding="0" cellspacing="0" style="width: 100%">
	<tr>
		<td style="font-weight: bold;height:auto;background: url(corebank/workflow/Search/jquery/images/filterGrad.jpg) repeat-x;font-size:14px;border-bottom: 1px solid silver"><span style="padding-left: 8px"><%=MessageRetriever.getMessage(name,cwhLocale,1)%></span>
		</td>
	</tr>
</table>
<div style="margin:5px;margin-left: 5px;">
<div style="width: 85%;background: #E8F4FF;margin-top:8px;margin-bottom:15px;height:auto;vertical-align: middle" >
<div style="margin:5px;margin-left: 5px;">
<fieldset>

<table width="85%" cellpadding="2"  cellspacing="0" style="margin-left:30px;margin-top: 5px">
	<tr>
		<td nowrap><%=MessageRetriever.getMessage("Nar_CIF",cwhLocale,1)%>&nbsp;<font size="1" color="#FF0000" >**</td>
		<td colspan=4><input style="background-color: white;"  id='Nar_CIF' readonly="true" name="Nar_CIF" type="text"  size="16" />
		<a id="icoCifSearch" name="icoCifSearch" href="javascript:onCifSearchClick()"><img src="/corebank/common/images/search.gif" border=0></a>
		</td>
		</tr>
		<tr>
		<!--<td width="15%"><%=MessageRetriever.getMessage("Ext_Acc_Cust_Name",cwhLocale,1)%></td>
	    <td colspan=2 width="25%"> <input style='background-color: white;' type="text" class=label size=35 maxlength=35 id ="cust_name" name="cust_name" value="" readonly></td>-->
		<td width="15%"><%=MessageRetriever.getMessage("Ext_Acc_Cust_Name",cwhLocale,1)%></td>
	    <td colspan=2 width="25%"> <input style='background-color: white;' type="text" class=label size=35 maxlength=35 id ="cust_name" name="cust_name" value="" readonly></td>
		</tr>
		</table>
	<table style="margin-left:30px;margin-top: 5px">
	<tr>
		<td width="15%"><%=MessageRetriever.getMessage("Account_details",cwhLocale,1)%></td>
	    <!-- <td colspan=2 width="25%"> 
		<input style='background-color: white;' type="text" class=label size=35 maxlength=35 id ="Account_detail" name="Account_detail" value="" ></td>  --> 
		</tr>
		<tr>
			<td>
			<SELECT style="width:400;height:140" name="narrationPlaceHolder"  id="narrationPlaceHolder" style="background-color: white;"  SIZE="4" MULTIPLE " ></select></td>
			<input type="hidden" name="Trans_type" value="">
			<td colspan="2" valign="middle" wrap align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="button" name = "bnMoveRightChannel" id="bnMoveRightChannel" value = '>' onClick="moveToAnotherListBox(document.myForm.narrationPlaceHolder,document.myForm.narrationText);">
			</input>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="button" name = "bnMoveLeftChannel" id="bnMoveLeftChannel" value = '<' onClick="moveToAnotherListBox(document.myForm.narrationText,document.myForm.narrationPlaceHolder)">
			</input>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			</td>
			<td colspan="2">
			<select style="height:140px;width:400px;" name="narrationText" id="narrationText"  SIZE="4" MULTIPLE>
			</td>
		</tr>
	</table> 
	<div>&nbsp;</div>  
	</fieldset>
	<fieldset><legend>MT Message Type<font color="red">*</font></legend>
	<input type=hidden name='amtbased_flg_MT940' value='N'>
	<td><input type="checkbox" id="amtbased1" name="amtbased_flg1" onclick='chkcbx(this)' value="Y" />
		&nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("MT940",	cwhLocale, 1)%></td>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type=hidden name='amtbased_flg_MT942' value='N'>
	<td><input type="checkbox" id="amtbased_flg2" name="amtbased_flg2" value="Y" />
		&nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("MT942",	cwhLocale, 1)%></td>						
	<div id="tabs" style="width: 100%;background: #E8F4FF;margin-top:8px;margin-bottom:15px;height:auto;vertical-align: middle">
	<ul>
	<li><a href="#tabs-1" id ="hrefLink5" > <%=MessageRetriever.getMessage("COB_Others_Enrich1",cwhLocale,1)%> </a></li>
	<li><a href="#tabs-2" id ="hrefLink6" onClick='getHolders2();'><%=MessageRetriever.getMessage("COB_Others_Enrich2",cwhLocale,1)%></a></li>
	</ul>
	<div id="tabs-1" style="margin:5px;margin-left: 10px;" >
	<legend><%=MessageRetriever.getMessage("Delivery_Channel",cwhLocale,1)%><font color="red">*</font></td> </legend>
	<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
	<div></div>
	</table>

	<fieldset>
	<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
	<div></div>
	</table>
<table width="95%" style="margin-left:20px;margin-top: 5px">
 <tr>
	<input type=hidden name='swift_flgval' value = 'N'>
	<td><input type="checkbox" id="swiftflg1" onclick="myFunctionTest();" name="swift_flg1" value="N" > &nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("SWIFT_Channel",cwhLocale,1)%></td>
	</tr>
</table>				  
</fieldset>
<fieldset>
<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<tr>

<div id="LoadedTable" name="LoadedTable">
<p> </p> 
</div>
<br>
</tr>
	</table>				  
</fieldset>
<!--<table width="95%" style="margin-left:20px;margin-top: 5px">

<tr>
		<input type=hidden name='swift_flg_MT940' value='N'>
<td><input type="checkbox" id="amtbased"
			onChange="getTxnDesc();" name="swift_flg_1" value="Y" />
		&nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("Swift_Channel",
						cwhLocale, 1)%></td>
						
			
	</tr>


		
<tr>
		<TD ><%=MessageRetriever.getMessage("Account_details",cwhLocale,1)%><font size="1" color="#FF0000">*</TD>

<td colspan=10>&nbsp;&nbsp;&nbsp;</td>
							<td colspan=10>&nbsp;&nbsp;&nbsp;</td>

									<td colspan=10>&nbsp;&nbsp;&nbsp;</td>
		<td colspan=10>&nbsp;&nbsp;&nbsp;</td>
		<td  nowrap><%=MessageRetriever.getMessage("Bic_code_no",cwhLocale,1)%><font size="1" color="#FF0000">*</font></TD>
	</tr>
	
	<tr>
	
			  <td colspan=2 width="25%"> <input style='background-color: white;' type="text" class=label size=35 maxlength=35 id ="cust_name1" name="cust_name1"  value=""   ></td>
			 		<td colspan=10>&nbsp;&nbsp;&nbsp;</td>
							<td colspan=10>&nbsp;&nbsp;&nbsp;</td>

									<td colspan=10>&nbsp;&nbsp;&nbsp;</td>

			  <td colspan=2 width="25%"> <input style='background-color: white;' type="text" class=label size=35 maxlength=35 id ="cust_name2" name="cust_name2"  value=""   ></td>

</tr>
</table>-->
<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<fieldset>
<table  style="margin-left:20px;margin-top: 5px"> 
 <tr>
	<input type=hidden name='purtransfer_flg' value = 'N'> 
	<td><input type="checkbox" id="purtransfer" onclick="" name="purtransfer_flg1" value="N"  onchange="javascript:getHolders(),defaultMT940Path();" > &nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("SFTP_Channel",cwhLocale,1)%></td>
	</tr>
	<tr>
		<td>
		<%=MessageRetriever.getMessage("SFTP_FOLDER_PATH",cwhLocale,1)%>
		</td>
		<td>
			<input type="text" id="line01" name="line01" maxlength="50" size="40" onblur="validateSftpPathMt940(this)">
		</td>
		<td>
			<%=MessageRetriever.getMessage("EMAIL_ADDRESS",cwhLocale,1)%>
			</td>
			<td><input type="text" id="email" name="email" maxlength="100" size="40">
		</td>
		</tr>
		<tr>
		<td>
			<%=MessageRetriever.getMessage("ENCRY_REQ_FOR_SFTP",cwhLocale,1)%>
		</td>
		<td>
			<input type="radio" name="chkChgPosReq" id="chkChgPosReqYes">Yes
			<input type="radio" name="chkChgPosReq" id="chkChgPosReqNo">No
			<input type=hidden name='encryptFlag' id='encryptFlag' value ='NO'>
		</td>
	</tr>
	 
			<tr id="ilinkPublicKeyHide">
			<td width="38%" style="margin-left:20px;margin-top: 5px"><%=MessageRetriever.getMessage("PUBLIC_KEY_FOR_SFTP",cwhLocale,1)%></td>
			<td><input type="text"  size=40 maxlength=100 id="ilinkPublicTxt" name="ilinkPublicTxt">&nbsp;&nbsp;&nbsp;&nbsp;

			<span id="PubNewId"><a  href="#" id="ilinkPublicKey1" name="ilinkPublicKey1" onClick="openAttachDoc('PUB');"><%=MessageRetriever.getMessage("ATTACH_PUBLIC_KEY",cwhLocale,1)%></a></span>
			
			<span align="center" id="ilinkPublicKey"  name="ilinkPublicKey"></td>
					
			
	</tr>
<table width="55%" style="margin-left:20px;margin-top: 5px">		
	<tr>
<td>
			<%=MessageRetriever.getMessage("FILE_FORMAT_SFTP",cwhLocale,1)%><font color="red">**</font>
		</td>
							<input type=hidden name='fileformatflg01' id='fileformatflg01' value ='N'>

                            <td><input type="checkbox" id="fileformat1" name="fileformat1" value="N"/>xls</td>
							
							<!-- <input type=hidden id='fileformatflg02' name='fileformatflg02' value ='N'> -->

							<td><input type="checkbox" id="fileformat2" name="fileformat2" value="N"/>xlsx</td>
							
							<!-- <input type=hidden  id='fileformatflg03' name='fileformatflg03' value ='N'> -->

                            <td><input type="checkbox" id="fileformat3" name="fileformat3" value="N"/>csv</td>
							
							<!-- <input type=hidden id='fileformatflg04' name='fileformatflg04' value ='N'> -->

							<td><input type="checkbox" id="fileformat4" name="fileformat4" value="N"/>txt</td>

                      
</tr>
</table>
<table  style="margin-left:20px;margin-top: 5px">
<tr>
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_SFTP",cwhLocale,1)%>
			</td>
			<td>
				<input type="text" id="line02" name="line02" maxlength="50" size="40" onblur="validateSpecialCharacters(this)">
			</td>
			</tr>
			<tr>
		<TD ><%=MessageRetriever.getMessage("Place_Holder_SFTP",cwhLocale,1)%></TD>
		<td colspan=10></td>
		<td  nowrap><%=MessageRetriever.getMessage("File_Name_format_SFTP",cwhLocale,1)%></TD>
	</tr>
	<tr> 
	<TD>
				<SELECT style="width:200;height:140" name="placeHolderAcc"  id="placeHolderAcc"  ondblclick="plholderdbclick(this)" style="background-color: white;"  id="placeHolderAcc"  SIZE="4"   ></select>
		<div id="selectTooltip" style="display:none;position:absolute;padding:1px;border:1px solid #333333;;background-color:#fffedf;font-size:smaller;"></div></td>
		
		<td colspan=2></td>
		<td colspan=2></td>
		<td colspan=2>
			<table align="center">
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center"  onclick='addPlaceHolderItem(myForm);setCursorPositionToEnd("placeText")' ;><%=MessageRetriever.getMessage("Add",cwhLocale,1)%></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" id="Remove" align="center" onclick="removePlaceHolderItem(myForm);setCursorPositionToEnd('placeText')" ;><%=MessageRetriever.getMessage("Remove",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center" onclick="callResetNarrationText(myForm);" ><%=MessageRetriever.getMessage("Clear",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			</table>
		</td>
		<td colspan=2></td>
		<td colspan=2></td>
		<TD><textarea rows="10" cols="40" style="overflow: auto" style="background-color: white;" name="placeText" id="placeText" onchange='validateSpecialCharacters(this);' ></textarea></TD>
	</tr>
	<tr>
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_PREVIEW",cwhLocale,1)%>
			</td>
			<td>
				<input type="text" id="line3" name="line3" maxlength="50" size="40" onblur="validateSpecialCharacters(this)">
			</td>
			</tr> 
</table>
</table>
</fieldset>
<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<fieldset>
<table style="margin-left:20px;margin-top: 5px">

 <tr>
							<input type=hidden name='customer_flg' value = 'N'>

                            <td><input type="checkbox" id="customer_flg1" onclick="" name="customer_flg1" value="N"  onchange="javascript:getHolders();">&nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("Customer_Front_End",cwhLocale,1)%></td>

                      

				  </tr>
<table width="55%" style="margin-left:20px;margin-top: 5px">					  
<tr>
<td> 
			<%=MessageRetriever.getMessage("File_Format_CBX",cwhLocale,1)%><font color="red">**</font>
		</td>
							<input type=hidden name='fileformatflgcbx01' id='fileformatflgcbx01' value ='N'> 

                            <td><input type="checkbox" id="fileformatcbx1" onclick=""name="fileformatcbx1" value="N"/>xls</td>
							<!-- <input type=hidden name='fileformatflgcbx02' value ='N'>
 -->
							<td><input type="checkbox" id="fileformatcbx2" onclick=""name="fileformatcbx2" value="N"/>xlsx</td>
							<!-- <input type=hidden name='fileformatflgcbx03' value ='N'>
 -->
                            <td><input type="checkbox" id="fileformatcbx3" onclick="" name="fileformatcbx3" value="N"/>csv</td>
							<!-- <input type=hidden name='fileformatflgcbx04' value ='N'> -->

							<td><input type="checkbox" id="fileformatcbx4" onclick=""name="fileformatcbx4" value="N"/>txt</td>
</tr>
</table>
<table style="margin-left:20px;margin-top: 5px">
<tr> 
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_cbx",cwhLocale,1)%>
			</td>
			<td>
				<input type="text" id="line03" name="line03" maxlength="50" size="40"  onblur="validateSpecialCharacters(this)">
			</td>
			</tr>
			<tr>
		<TD ><%=MessageRetriever.getMessage("Place_Holder_CBX",cwhLocale,1)%></TD>
		<td colspan=10></td>
		<td  nowrap><%=MessageRetriever.getMessage("File_Name_format_CBX",cwhLocale,1)%></TD>
	</tr>
	<tr>
	<TD>
				<SELECT style="width:200;height:140" name="placeHoldercbx"  id="placeHoldercbx"  ondblclick="plholderdbclickCbx(this)" style="background-color: white;"  id="placeHoldercbx"  SIZE="4" onfocus='enableButton();' ></select>
		<div id="selectTooltip" style="display:none;position:absolute;padding:1px;border:1px solid #333333;;background-color:#fffedf;font-size:smaller;"></div></td>
		
		<td colspan=2></td>
		<td colspan=2></td>
		<td colspan=2>
			<table align="center">
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center"  onclick='addPlaceHolderCbxItem(myForm);setCursorPositionToEnd("placeTextCbx")' ;><%=MessageRetriever.getMessage("Add",cwhLocale,1)%></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" id="RemoveSftp2" align="center" onclick="removePlaceHolderCbxItem(myForm);setCursorPositionToEnd('placeTextCbx')" ;><%=MessageRetriever.getMessage("Remove",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center" onclick="callResetNarrationCbxText(myForm);" ><%=MessageRetriever.getMessage("Clear",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			</table>
		</td>
		<td colspan=2></td>
		<td colspan=2></td>
		<TD><textarea rows="10" cols="40" style="overflow: auto" style="background-color: white;" name="placeTextCbx" id="placeTextCbx" onchange='validateSpecialCharacters(this);' ></textarea></TD>
	</tr>
</table><table style="margin-left:20px;margin-top: 5px"	>
		<tr>
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_PREVIEW_CBX",cwhLocale,1)%>
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="line04" name="line04" maxlength="50" size="40" onblur="validateSpecialCharacters(this)">
			</td>
			</tr>		  
	 </table>	
 </fieldset>
 
<fieldset>
<%-- <div style="width: 100%;background: #FFF3E8;margin-top:8px;margin-bottom:12px;height:auto;vertical-align: middle">
<legend>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=MessageRetriever.getMessage("MT940_DEL_FREQ",cwhLocale,1)%></td> </legend>
</div> --%>
<table>
<tr>
		<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<input type="radio" id="defaultTime" name="timeFlag" value="N"  onchange="doClearTime(this);">
			<%=MessageRetriever.getMessage("DEFAULT_TIME",cwhLocale,1)%>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<input type="text" id="deftime" name="deftime" maxlength="70" >
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<input type="radio" id="customTime" name="timeFlag" value="Y"  onchange="doClearTime(this);">
			<%=MessageRetriever.getMessage("CUSTOM_TIME",cwhLocale,1)%>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<input type="text" id="custtime" name="custtime" maxlength="70">
		</td>
	</tr>
	<tr>
	   <td>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("FREQUENCY",cwhLocale,1)%> 
	
	    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<input type="radio" id="weeklyFrq" name="freqFlag" value="N">
		<%=MessageRetriever.getMessage("WEEKLY",cwhLocale,1)%>
		<input type="radio" id="monthlyFrq" name="freqFlag" value="Y">
		<%=MessageRetriever.getMessage("MONTHLY",cwhLocale,1)%>
	</td> 
   </tr>
</table>
 </fieldset>
 &nbsp;&nbsp;
<fieldset>
<div style="width: 100%;background: #E8F4FF;margin-top:8px;margin-bottom:12px;height:auto">
<table style="margin-left:20px;margin-top: 5px">
	<tr>
		<td>
			<%=MessageRetriever.getMessage("ZERO_RECORD_STMT",cwhLocale,1)%> 
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chkZero" id="chkZeroYes">Yes
			<input type="radio" name="chkZero" id="chkZeroNo">No

			<input type=hidden name='chkZero' id='chkZero' value = 'N'>
		</td>
	</tr>
	<tr>
		<td>
			<%=MessageRetriever.getMessage("ZERO_RECORD_STMT_GENERATE",cwhLocale,1)%><font color="red">**</font>
		</td>
		</tr>
	</table>
</div>
</fieldset>
<fieldset><legend><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=MessageRetriever.getMessage("Field_Level_Details",cwhLocale,1)%></td></legend>
 <table  cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<table  style="margin-left:20px;margin-top: 5px">
<tr>
			<td>
				<%=MessageRetriever.getMessage("FIELD_25",cwhLocale,1)%><font color="red">*</font> 
			</td>
			<td>
				
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="fieldIban" name="chkFld25" value="N">
					<input type=hidden name='hidFieldIban' id='hidFieldIban' value = 'N'>
					<font size="2"><%=MessageRetriever.getMessage("IBAN_ACC",cwhLocale,1)%>
					<input type="radio" id="fieldAcc" name="chkFld25" value="Y">
					<input type=hidden name='hidFieldAcc' id='hidFieldAcc' value = 'Y'>
					<font size="2"><%=MessageRetriever.getMessage("ACCOUNT_NUMBER",cwhLocale,1)%> 
				
			</td>
		</tr>
		<tr>
		<td>
			<%=MessageRetriever.getMessage("Field_61",cwhLocale,1)%><font color="red">*</font> 
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chkFld61" id="chkFld61Yes">Yes
			<input type=hidden name='hidchkFld61' id='hidchkFld61' value = 'Y'>
			<input type="radio" name="chkFld61" id="chkFld61No">No
			<input type=hidden name='hidFld61No' id='hidFld61No' value = 'N'>
		</td>
	</tr>
</table>

</fieldset>

<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=MessageRetriever.getMessage("SUBS_FROM_DT", cwhLocale, 1)%><font color="red">*</font></td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td colspan="2" class="no-bor-left">
			<input type="text" size=16 value='' id="searchCrit4" name="FROM_DATE" disabled=disabled>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<td class="no-bor-left"><%=MessageRetriever.getMessage("SUBS_TO_DT", cwhLocale, 1)%><font color="red">*</font></td>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td colspan="2" class="no-bor-left">
			<input type="text" size=16  value='' id="searchCrit5" name="TO_DATE" disabled=disabled></td>
	</tr>
</div>
<div id="tabs-2" style="margin:5px;margin-left: 10px;">

			<legend><%=MessageRetriever.getMessage("Delivery_Channel",cwhLocale,1)%><font color="red">*</font></td> </legend>
 <table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<fieldset>
<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<table width="95%" >
 <tr>

							<input type=hidden name='swift_flg' value = 'N'>

                            <td><input type="checkbox" id="swiftflg2" onclick="myFunctionTestMT();" name="swift_flg2" value="N"> &nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("SWIFT_Channel",cwhLocale,1)%></td>

                      

					  </tr>
	</table>				  
</fieldset>
<fieldset>
<table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<tr>
<div id="LoadedTable1" name="LoadedTable1">
<sub> </sub>
</div>
<br>

</tr>
	</table>
	
<table width="95%" >
 <tr>

							<input type=hidden name='purtransfer_flg02' value = 'N'> 

                            <td><input type="checkbox" id="purtransfer_flg2" onclick="chkamt(this);single();" name="purtransfer_flg2" value="N"  onchange="javascript:getHolders2(),defaultMT942Path();"> &nbsp&nbsp&nbsp;<%=MessageRetriever.getMessage("SFTP_Channel",cwhLocale,1)%></td>

                      

					  </tr>
					  
					  <tr>
			<td>
				<%=MessageRetriever.getMessage("SFTP_FOLDER_PATH",cwhLocale,1)%>
			</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="line05" name="line05" maxlength="50" size="40" onblur="validateSftpPathMt942(this)">
			</td>
			<td>
			<%=MessageRetriever.getMessage("EMAIL_ADDRESS",cwhLocale,1)%>
			</td>
			<td><input type="text" id="email1" name="email1" maxlength="100" size="40">
			</td>
			</tr>
		<tr>
		<td>
			<%=MessageRetriever.getMessage("ENCRY_REQ_FOR_SFTP",cwhLocale,1)%> 
		</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chkChgPosReq2" id="chkChgPosReq2Yes">Yes
			<input type="radio" name="chkChgPosReq2" id="chkChgPosReq2No">No
		</td>
	</tr>
	 
			<tr id="ilinkPublicKeyHide2">
			<td width = "21%" style="margin-left:35px;"><%=MessageRetriever.getMessage("PUBLIC_KEY_FOR_SFTP",cwhLocale,1)%></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size=40 maxlength=100 id="ilinkPublicTxt2" name="ilinkPublicTxt2">&nbsp;&nbsp;&nbsp;&nbsp;

			<span id="PubNewId2"><a  href="#" id="ilinkPublicKey2" onClick="openAttachDoc('MT');"><%=MessageRetriever.getMessage("ATTACH_PUBLIC_KEY",cwhLocale,1)%></a></span>
			
			<span align="center" id="ilinkPublicKey02"  name="ilinkPublicKey02"></td>
					
			
	</tr>
</table>
<table  width="55%">	
	<tr>
<td>
			<%=MessageRetriever.getMessage("FILE_FORMAT_SFTP",cwhLocale,1)%><font color="red">**</font> 
		</td>
							<input type=hidden name='filefrmtflg01' value ='N'>

                            <td><input type="checkbox" id="file2format1" onclick="chkamt(this);single();"name="file2formatflg1" value="N"/>xls</td>
														<input type=hidden name='filefrmtflg02' value ='N'>

							<td><input type="checkbox" id="file2format2" onclick="chkamt(this);single();"name="file2formatflg2" value="N"/>xlsx</td>
														<input type=hidden name='filefrmtflg03' value ='N'>

                            <td><input type="checkbox" id="file2format3" onclick="chkamt(this);single();"name="file2formatflg3" value="N"/>csv</td>
														<input type=hidden name='filefrmtflg04' value ='N'>

							<td><input type="checkbox" id="file2format4" onclick="chkamt(this);single();"name="file2formatflg4" value="N"/>txt</td>

                      
</tr>
</table>
<table>
<tr>
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_SFTP",cwhLocale,1)%>
			</td>
			<td>
				<input type="text" id="line06" name="line06" maxlength="50" size="40" onblur="validateSpecialCharacters(this)">
			</td>
			</tr>
			<tr>
		<TD ><%=MessageRetriever.getMessage("Place_Holder_SFTP",cwhLocale,1)%></TD>
		<td colspan=10></td>
		<td  nowrap><%=MessageRetriever.getMessage("File_Name_format_SFTP",cwhLocale,1)%></TD>
	</tr>
	<tr>
	<TD>
				<SELECT style="width:200;height:140" name="placeHolderAcc2"  id="placeHolderAcc2"  ondblclick="plholderdbclick2(this)" style="background-color: white;"  SIZE="4" ></select>
		<div id="selectTooltip" style="display:none;position:absolute;padding:1px;border:1px solid #333333;;background-color:#fffedf;font-size:smaller;"></div></td>
		
		<td colspan=2></td>
		<td colspan=2></td>
		<td colspan=2>
			<table align="center">
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center"  onclick='addPlaceHolderItem2(myForm);setCursorPositionToEnd("placeText2")' ;><%=MessageRetriever.getMessage("Add",cwhLocale,1)%></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" id="Remove" align="center" onclick="removePlaceHolderItem2(myForm);setCursorPositionToEnd('placeText2')" ;><%=MessageRetriever.getMessage("Remove",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="button1" align="center" onclick="callResetNarrationText2(myForm);" ><%=MessageRetriever.getMessage("Clear",cwhLocale,1)%> </td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			</table>
		</td>
		<td colspan=2></td>
		<td colspan=2></td>
		<TD><textarea rows="10" cols="40" style="overflow: auto" style="background-color: white;" name="placeText2" id="placeText2" onchange='validateSpecialCharacters(this);' ></textarea></TD>
	</tr>
	<tr>
			<td>
				<%=MessageRetriever.getMessage("FILE_NAMING_FORMAT_PREVIEW_SFTP",cwhLocale,1)%>
			</td>
			
			<td>
				<input type="text" id="line07" name="line07" maxlength="50" size="40" onblur="validateSpecialCharacters(this)">
			</td>
			</tr>

</table>
</fieldset> 
<fieldset>
<table width="95%" style="margin-left:20px;margin-top: 5px">

<div style="width: 100%;background: #FFF3E8;margin-top:8px;margin-bottom:12px;height:auto;vertical-align: middle">
<legend>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=MessageRetriever.getMessage("MT942_DEL_FREQ",cwhLocale,1)%></td> </legend>
</div>
	<tr>
<td>
			<%=MessageRetriever.getMessage("DEL_TIME",cwhLocale,1)%><font color="red">*</font> 
		</td>
			

							<input type=hidden name='deltimehrflg' value ='N'> 

                            <td><input type="checkbox" id="deltimehour" name="deltimeflghourval" onChange='enableHour();' value="N"/><%=MessageRetriever.getMessage("HOUR_BASED",cwhLocale,1)%>
							</td>
							<td colspan=2></td>
							<td colspan=2></td> 
							
									<td>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	</td>
							<input type=hidden name='deltimeslotflg' value ='N'>

							<td><input type="checkbox" id="deltimeslot" name="deltimeflgslotval" onchange='enableSlot();' value="N"/><%=MessageRetriever.getMessage("SLOT_BASED",cwhLocale,1)%>
							</td>
							</tr>
				<tr>			
			<td>	&nbsp;&nbsp;	</td>
		
		<td colspan=4> <select size="1" id='MtDel_Time' name="MtDel_Time" onclick="chkdel()" onFocus='OnFocusChange(this.id)'>
			<option value=""selected>---------Select---------</option>
				<option value="1">Every 1 hr</option>
					<option value="2">Every 2 hr</option>
			<option value="3">Every 3 hr</option>
			<option value="4">Every 4 hr</option>
		</td>
		<td>	&nbsp;&nbsp;	</td>
		
					<td nowrap><%=MessageRetriever.getMessage("FIRST_SLOT",cwhLocale,1)%></td> 
					
					<td colspan=2><input type='text' id='FIRST_SLOT_HOUR_TIME' name='FIRST_SLOT_HOUR_TIME' size=5% maxlength='2' onblur="validate_slot_hour1();" onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;' >:<select id='FIRST_SLOT_MIN_TIME' name='FIRST_SLOT_MIN_TIME' size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option>
								</select>:<select id='FIRST_SLOT_SEC_TIME' name='FIRST_SLOT_SEC_TIME'  size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option></select>
									</td>
							
							
							
							
				</tr>			
					<tr>			
		<td colspan=2></td>
		<td colspan=2></td>
		<td colspan=2></td>
					<td nowrap><%=MessageRetriever.getMessage("SECOND_SLOT",cwhLocale,1)%></td>
					
					<td colspan=2><input type='text' id='SECOND_SLOT_HOUR_TIME' name='SECOND_SLOT_HOUR_TIME' size=5% maxlength='2' onblur="validate_slot_hour2();" onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;' >:<select id='SECOND_SLOT_MIN_TIME' name='SECOND_SLOT_MIN_TIME' size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option>
								</select>:<select id='SECOND_SLOT_SEC_TIME' name='SECOND_SLOT_SEC_TIME'  size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option></select>
									</td>
							
							
							
							
				</tr>			

				<tr>			
		<td colspan=2></td>
		<td colspan=2></td>
		<td colspan=2></td>
		
					<td nowrap><%=MessageRetriever.getMessage("THIRD_SLOT",cwhLocale,1)%></td>
					
					<td colspan=2><input type='text' id='THIRD_SLOT_HOUR_TIME' name='THIRD_SLOT_HOUR_TIME' size=5% maxlength='2' onblur="validate_slot_hour3();" onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;' >:<select id='THIRD_SLOT_MIN_TIME' name='THIRD_SLOT_MIN_TIME' size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option>
								</select>:<select id='THIRD_SLOT_SEC_TIME' name='THIRD_SLOT_SEC_TIME'  size=5% maxlength='2' onchange='upperCase(this);validateSpecialCharacters(this);' style='background-color: white;'><option value='0'>00</option></select>
									</td>
							
						</tr>
						
				
				
				
  </table>                    

 </fieldset>
 
 &nbsp;&nbsp;
<fieldset>
<div style="width: 100%;background: #E8F4FF;margin-top:8px;margin-bottom:12px;height:auto">
<table width="95%" style="margin-left:20px;margin-top: 5px">
	<tr>
		<td>
			<%=MessageRetriever.getMessage("ZERO_RECORD_STMT_mt942",cwhLocale,1)%> 
		</td>
		<td>
			<input type="radio" name="chkZero2" id="chkZero2Yes">Yes
			<input type="radio" name="chkZero2" id="chkZero2No">No
		</td>
	</tr>
	<tr>
		<td>
			<%=MessageRetriever.getMessage("ZERO_RECORD_STMT_GENERATE",cwhLocale,1)%><font color="red">**</font>
		</td>
		</tr>
	</table>
</div>
</fieldset>

<fieldset><legend><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=MessageRetriever.getMessage("Field_Level_Details",cwhLocale,1)%></td></legend>
 <table width="95%" cellpadding="2"  cellspacing="0" style="margin-left:20px;margin-top: 5px">
<div></div>
</table>
<table width="95%" style="margin-left:20px;margin-top: 5px">
<tr>
			<td>
				<%=MessageRetriever.getMessage("FIELD_25",cwhLocale,1)%><font color="red">*</font> 
			</td>
			<td>
				
					<input type="radio" id="fieldIban2" name="chk2Fld25" value="N">
					<font size="1"><%=MessageRetriever.getMessage("IBAN_ACC",cwhLocale,1)%>
					<input type="radio" id="fieldAcc2" name="chk2Fld25" value="Y">
					<font size="1"><%=MessageRetriever.getMessage("ACCOUNT_NUMBER",cwhLocale,1)%> 
				
			</td>
		</tr>
		<tr>
			<td>
				<%=MessageRetriever.getMessage("FIELD_34",cwhLocale,1)%><font color="red">*</font>
			</td>
			<td>
				
					<input type="radio" id="fieldSingle" name="cntWvrFlgSingle" onclick='disablePayemntsPortal(this)' value="N">
					<font size="1"><%=MessageRetriever.getMessage("SINGLE",cwhLocale,1)%>
					<input type="radio" id="fieldBoth" onclick='enablePayemntsPortal(this);defaultZero();' name="cntWvrFlgSingle" value="Y">
					<font size="1"><%=MessageRetriever.getMessage("BOTH",cwhLocale,1)%> 
				
			</td>
		</tr>
		<tr>
			<td>
				<%=MessageRetriever.getMessage("34F_FLOOR_DEBIT",cwhLocale,1)%><font color="red">**</font>
			</td>
			<td>
				<input type="text" id="floorDebit" name="floorDebit" maxlength="26" size="40"  onblur="validateSpecialCharacters(this);" onchange="isNumberValidate(this);" onkeypress="return validateNumberWithDot(this,event)">
			</td>
			</tr>
<tr>
			<td>
				<%=MessageRetriever.getMessage("34F_FLOOR_CREDIT",cwhLocale,1)%><font color="red">**</font>
			</td>
			<td>
				<input type="text" id="floorCredit" name="floorCredit" maxlength="26" size="40"  onblur="validateSpecialCharacters(this);"onchange="isNumberValidate(this);" onkeypress="return validateNumberWithDot(this,event)">
			</td>
			</tr>
		<tr>
		<td>
			<%=MessageRetriever.getMessage("Field_61",cwhLocale,1)%><font color="red">*</font>
		</td>
		<td>
			<input type="radio" name="chk2Fld61" id="chk2Fld61Yes">Yes
			<input type="radio" name="chk2Fld61" id="chk2Fld61No">No
		</td>
	</tr>
	<tr>
		<td>
			<%=MessageRetriever.getMessage("Field_90C",cwhLocale,1)%><font color="red">*</font>
		</td>
		<td>
			<input type="radio" name="chk2Fld90" id="chk2Fld90Yes">Yes
			<input type="radio" name="chk2Fld90" id="chk2Fld90No">No
		</td>
	</tr>
</table>

</fieldset>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<%=MessageRetriever.getMessage("SUBS_FROM_DT", cwhLocale, 1)%><font color="red">*</font></td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td colspan="2" class="no-bor-left">
			<input type="text" size=16 value='' id="searchCrit6" name="FR_DATE" disabled=disabled>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<td class="no-bor-left"><%=MessageRetriever.getMessage("SUBS_TO_DT", cwhLocale, 1)%><font color="red">*</font></td>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td colspan="2" class="no-bor-left">
			<input type="text" size=16  value='' id="searchCrit7" name="END_DATE" disabled=�disabled></td>
	</tr>
</div>




</div>
</div></div>
		
		
	
<div>&nbsp;&nbsp;</div>
<div style="float:right;padding-right: 5px">
	<table align="right">
		<tr>
			<td align="center" class="button1" onclick="doAllSave()"><%=MessageRetriever.getMessage("CH_Save",cwhLocale,1)%></td>
			<td style="width: 30px"></td>
			<td class="button1" align="center" onclick="Close()" ><%=MessageRetriever.getMessage("Close",cwhLocale,1)%></td>
		</tr>
	</table>
</div>



<input type="hidden" name="fileLevelStoreFlag" value="<%=storeFlag%>">
<input type="hidden" name="auth_reject_flag" value="">

<input type="hidden" name="orbi_id" id="orbi_id" value="" >
<input type="hidden" name="actionId" id="actionId"  value="">
</form>
 <div id='confirm'>
	<div style ="height:auto; line-height:auto; width:100%; background:url(corebank/workflow/Search/jquery/images/Confirmheader.gif) repeat-x; color:#fff; font-weight:bold;"><span style ='padding-left:8px;'><%=MessageRetriever.getMessage("BSTS_Alert",cwhLocale,1)%></span></div>
		<div align="center" class='message'></div>
		<div align="center" class='yes'><%=MessageRetriever.getMessage("Ok",cwhLocale,1)%></div>
	</div>
</div>
<div id='JConfirmPopup'>
	<div style ="height:auto; line-height:auto; width:100%; background:url(corebank/workflow/Search/jquery/images/Confirmheader.gif) repeat-x; color:#fff; font-weight:bold;"><span style ='padding-left:8px;'><%=MessageRetriever.getMessage("Confirmation_Message",cwhLocale,1)%></span></div>
	<div class='message'></div>
	<div style ="padding-left:30%;">
	<table>
		<tr>
			<td class='yes'><%=MessageRetriever.getMessage("Yes",cwhLocale,1)%></td>
			<td></td>
			<td class='no' ><%=MessageRetriever.getMessage("No",cwhLocale,1)%></td>
		</tr>
	</table>
	</div>
</div>
</body>
</html>