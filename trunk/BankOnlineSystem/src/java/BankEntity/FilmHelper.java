/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankEntity;

import org.hibernate.Session;

/**
 *
 * @author Administrator
 */
public class FilmHelper {
    Session session = null;

    public FilmHelper() {
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
}
