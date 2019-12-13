package Constants;

import Servlet.Constants;

public enum EnumReviewCards {
        REVIEW1( "Uma Maheshwari","Bangalore","On sharing my requirement, I got a loan of â‚¹5 Lacs from finzy in 2 working days. I used it for doing up the interiors of my flat", Constants.CUSTOMER_UMA),
        REVIEW2("Bikram Chatterjee","Bangalore","Itâ€™s an absolutely brilliant venture! The process is completely hassle free and you are treated like the most important person in the world. I was completely awestruck with the process and the experience. Thanks finzy for making me independent and helping me live my dream!", Constants.CUSTOMER_BIKRAM ),
        REVIEW3("L Giri Naidu","Banglore","What impressed me the most was finzyâ€™s online process of self uploading basic documents, which made me feel safe and comfortable. All in all the entire process was fast, safe and convenient." , Constants.CUSTOMER_NAIDU);
      public String name="",location="",review="",imageSrc="";
    EnumReviewCards(String name, String location, String review , String imageSrc ) {
        this.name=name;
        this.location=location;
        this.review=review;
        this.imageSrc=imageSrc;
    }

}
