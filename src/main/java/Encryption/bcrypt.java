package Encryption;

import org.springframework.security.crypto.bcrypt.BCrypt;

public class bcrypt {

    public String generateHashedPassword(String password)
    {
        String hashedPassword= BCrypt.hashpw(password,BCrypt.gensalt(15));
        return hashedPassword;
    }
    public boolean decryptHashedPassword(String password,String hashedPassword)
    {
    return BCrypt.checkpw(password,hashedPassword);
    }
}
