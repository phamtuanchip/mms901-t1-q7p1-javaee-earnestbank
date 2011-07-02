/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;

/**
 *
 * @author Administrator
 */
public class User extends IdentityAbs implements Identity{
    public User(){
    }
    public User(String username){
        setUsername(username);
    }

    @Override
    public String getUserName() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
