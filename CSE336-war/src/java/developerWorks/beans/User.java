/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package developerWorks.beans;

import java.io.Serializable;

/**
 *
 * @author Eric
 */
public class User implements Serializable{
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String displayName;
    private String country;
    private String language = "English";
    private String securityQuestion;
    private String securityAnswer;
    private boolean byEmail;
    private boolean byTelephoneOrPostalMail;

    public User() {
        this.firstName = null;
        this.lastName = null;
        this.email = null;
        this.password = null;
        this.displayName = null;
        this.country = null;
        this.securityQuestion = null;
        this.securityAnswer = null;
        this.byEmail = false;
        this.byTelephoneOrPostalMail = false;
    }
    
    

    public User(String firstName, String lastName, String email, String password, String displayName, String country, String securityQuestion, String securityAnswer, boolean byEmail, boolean byTelephoneOrPostalMail) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.displayName = displayName;
        this.country = country;
        this.securityQuestion = securityQuestion;
        this.securityAnswer = securityAnswer;
        this.byEmail = byEmail;
        this.byTelephoneOrPostalMail = byTelephoneOrPostalMail;
    }
    
    

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public void setSecurityQuestion(String securityQuestion) {
        this.securityQuestion = securityQuestion;
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public void setSecurityAnswer(String securityAnswer) {
        this.securityAnswer = securityAnswer;
    }

    public boolean isByEmail() {
        return byEmail;
    }

    public void setByEmail(boolean byEmail) {
        this.byEmail = byEmail;
    }

    public boolean isByTelephoneOrPostalMail() {
        return byTelephoneOrPostalMail;
    }

    public void setByTelephoneOrPostalMail(boolean byTelephoneOrPostalMail) {
        this.byTelephoneOrPostalMail = byTelephoneOrPostalMail;
    }
    
    public boolean isValid(){
        return !email.isEmpty();
    }
}
