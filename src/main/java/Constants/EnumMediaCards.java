package Constants;

import static Servlet.Constants.*;

public enum EnumMediaCards {
    YOUR_STORY("Finzy wants to change how India sees lending",YOUR_STORY_IMG),
    TIMES_OF_INDIA("Finzy secures $2.3 million in pre-series A funding",TIMES_OF_INDIA_IMG),
    INDIAN_EXPRESS("finzy receives NBFC-P2P certification from RBI",INDIAN_EXPRESS_IMG),
    ECONOMIC_TIMES("Millenials tap fintech startups for holidays",ECONOMIC_TIMES_IMG),
    BWCI_WORLD(" Finzy to Trigger Pan-India Channel Tie-ups for P2P Lending Visibility",BWCI_WORRLD_IMG),
    TECH_HERALD("Finzy achieves zero defaults in the first year of operations",TECH_HERALD_IMG);
  public   String story="",imgsrc="";

    EnumMediaCards(String story, String imgsrc) {
        this.story = story;
        this.imgsrc = imgsrc;
    }
}


