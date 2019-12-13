package Constants;

import static Servlet.Constants.*;

public enum EnumFinzyWorks
{
DIGITAL("Digitally Connect borrowers and investors",DIGITAL_LOGO),
    DOCUMENTATION("Documentation & Disbursement of Loans",DOCUMENTATION_LOGO),
    EMI(" Automated monthly EMI  collection & transfer",EMI_LOGO);
public String details="", imgsrc="";

    EnumFinzyWorks(String details, String imgsrc) {
        this.details = details;
        this.imgsrc = imgsrc;
    }
}
