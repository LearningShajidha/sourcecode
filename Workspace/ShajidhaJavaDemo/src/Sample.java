import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
public class Sample {
	private static final String MMY_YEAR = "MMY_YEAR";
    private static final String SMY_QTRS = "SMY_QTRS";
    private static final String MMY_QTRS = "MMY_QTRS";
    private static final String CY_QTRS = "CY_QTRS";
    private static final String YEAR_YYYY = "yyyy";
    private static final String MONTH_MM = "MM";
    private static final String STRING_HYPHEN = "-";
    private static final String STRING_TILDE = "~";
    private static final String STRING_COMMA = ",";

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str="2021-02-22 08:54:04.0";
		String str2="2021-02-22 00:00:00.0";
		
		SimpleDateFormat timeStampFormat=new SimpleDateFormat("dd-MMM-yyyy HH:mm"); 
		SimpleDateFormat forCapEffDate=new SimpleDateFormat("dd-MMM-yyyy"); 
		try {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		SimpleDateFormat format2 = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		Date date = format1.parse(str);
		System.out.println("Output :: >>>"+timeStampFormat.format(format1.parse(str)));
		System.out.println("Capp Eff date  :: >>>"+forCapEffDate.format(format1.parse(str2)));
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
		Date date2;	
			date2 = sdf.parse("24-JUN-24");
			System.out.println(date2+"**"+getQtrNumber("06"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		

	}

	  public static int getQtrNumber(String mon) {
	        final int month = Integer.valueOf(mon);
	         int quarterNumber = 0;
	        if(month>=1 && month<=3)
	        	quarterNumber=1;
	        else if(month>=4 && month<=6)
	        	quarterNumber=2;
	        else if(month>=7&& month<=9)
	        	quarterNumber=3;
	        else if(month>=10&& month<=12)
	        	quarterNumber=4;
            return quarterNumber;
	    }
	  public static int getCurrentModelYear() {
	        final Date date = Calendar.getInstance().getTime();
	        final SimpleDateFormat sdfYear = new SimpleDateFormat(YEAR_YYYY);
	        final SimpleDateFormat sdfMonth = new SimpleDateFormat(MONTH_MM);
	        int modelYear = 0;
	        final int year = Integer.valueOf(sdfYear.format(date));
	        final int month = Integer.valueOf(sdfMonth.format(date));
	        final int mmyYear =
	                Integer.valueOf("2016");
	        final int smyMonth =
	                Integer.valueOf("08-01~09-30,10-01~12-31,01-01~03-31,04-01~07-31".substring(0, 2)) - 1;
	        if (year < mmyYear && month >= smyMonth) {
	            modelYear = year + 1;
	        } else {
	            modelYear = year;
	        }
	        return modelYear;
	    }
}
