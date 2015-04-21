/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package developerWorks.beans;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Eric
 */
public class User implements Serializable{
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String rePassword;
    private String displayName;
    private String country;
    private String city;
    private String language = "English";
    private String securityQuestion;
    private String securityAnswer;
    private boolean byEmail;
    private boolean byTelephoneOrPostalMail;
    private Map m = new HashMap();

    public User() {
        this.firstName = null;
        this.lastName = null;
        this.email = null;
        this.password = null;
        this.rePassword = null;
        this.displayName = null;
        this.country = null;
        this.city = null;
        this.securityQuestion = null;
        this.securityAnswer = null;
        this.byEmail = false;
        this.byTelephoneOrPostalMail = false;
        
        m.put("firstName", null);
        m.put("lastName", null);
        m.put("email", null);
        m.put("password", null);
        m.put("rePassword", null);
        m.put("displayName", null);
        m.put("country", null);
        m.put("city", null);
        m.put("securityQuestion", null);
        m.put("securityAnswer", null);
        m.put("byEmail", null);
        m.put("byTelephoneOrPostalMail", null);
    }
    
    public User(String firstName, String lastName, String email, String password,String rePassword, String displayName, String country, String city, String securityQuestion, String securityAnswer, boolean byEmail, boolean byTelephoneOrPostalMail) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.rePassword = rePassword;
        this.displayName = displayName;
        this.country = country;
        this.city = city;
        this.securityQuestion = securityQuestion;
        this.securityAnswer = securityAnswer;
        this.byEmail = byEmail;
        this.byTelephoneOrPostalMail = byTelephoneOrPostalMail;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
        m.put("rePassword", rePassword);
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
        m.put("city", city);
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
        m.put("firstName", firstName);
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
        m.put("lastName", lastName);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
        m.put("email", email);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
        m.put("password", password);
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
        m.put("displayName", displayName);
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
        m.put("country", country);
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
        m.put("language", language);
    }

    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public void setSecurityQuestion(String securityQuestion) {
        this.securityQuestion = securityQuestion;
        m.put("securityQuestion", securityQuestion);
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public void setSecurityAnswer(String securityAnswer) {
        this.securityAnswer = securityAnswer;
        m.put("securityAnswer", securityAnswer);
    }

    public boolean isByEmail() {
        return byEmail;
    }

    public void setByEmail(boolean byEmail) {
        this.byEmail = byEmail;
        m.put("byEmail", byEmail);
    }

    public boolean isByTelephoneOrPostalMail() {
        return byTelephoneOrPostalMail;
    }

    public void setByTelephoneOrPostalMail(boolean byTelephoneOrPostalMail) {
        this.byTelephoneOrPostalMail = byTelephoneOrPostalMail;
        m.put("byTelephoneOrPostalMail", byTelephoneOrPostalMail);
    }
    
    public boolean isValid(){
        return email.isEmpty() ? false : true;
    }
    
    public Map getProperties(){
        return m;
    }
}
