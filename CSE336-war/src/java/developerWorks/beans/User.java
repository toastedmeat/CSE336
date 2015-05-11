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
    private String country = "Select One";
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

    public String setRePassword(String rePassword) {
        String s = "";
        
        if(rePassword.equals(password)){
            this.rePassword = rePassword;
            m.put("rePassword", rePassword);
        } else{
            s = "<span style='color:red'>Passwords must match</span>";
        }
        
        return s;
    }

    public String getCity() {
        return city;
    }

    public String setCity(String city) {
        String s = "";
        
        if(city.equals("")){
            s = "<span style='color:red'>You must enter a City</span>";
        } else{
            this.city = city;
            m.put("city", city);
        }
        
        return s;
    }

    public String getFirstName() {
        return firstName;
    }

    public String setFirstName(String firstName) {
        String s = "";
        
        if(firstName.equals("")){
            s = "<span style='color:red'>First Name field cannot be empty</span>";
        } else{
            this.firstName = firstName;
            m.put("firstName", firstName);
        }
        
        return s;
    }

    public String getLastName() {
        return lastName;
    }

    public String setLastName(String lastName) {
        String s = "";
        
        if(lastName.equals("")){
            s = "<span style='color:red'>Last Name field cannot be empty</span>";
        } else{
            this.lastName = lastName;
            m.put("lastName", lastName);
        }
        
        return s;
    }

    public String getEmail() {
        return email;
    }

    public String setEmail(String email) {
        String s = "";
        
        String emailPattern = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
        Boolean b = email.matches(emailPattern);
        
        if(b){
            this.email = email;
            m.put("email", email);
        } else{
            s = "<span style='color:red'>Invalid email address</span>";
        }
        
        return s;
    }

    public String getPassword() {
        return password;
    }

    public String setPassword(String password) {
        String s = "";
        
        if(password.length() < 8){
            s = "<span style='color:red'>Invalid password. Must be at least 8 characters.</span>";
        }else{
            this.password = password;
            m.put("password", password);
        }
        
        return s;
    }

    public String getDisplayName() {
        return displayName;
    }

    public String setDisplayName(String displayName) {
        String s = "";
        
        if(displayName.length()<3 || displayName.length()>31){
            s = "<span style='color:red'>Invalid display name. Must be between 3 - 31 characters.</span>";
        } else{
            this.displayName = displayName;
            m.put("displayName", displayName);
        }
        
        return s;
    }

    public String getCountry() {
        return country;
    }

    public String setCountry(String country) {
        String s = "";
        if (country.equals("select")){
            s = "<span style='color:red'>Please select a country</span>";
        } else{
            this.country = country;
            m.put("country", country);
        }
        
        return s;
    }

    public String getLanguage() {
        return language;
    }

    public String setLanguage(String language) {
        String s = "";
        
        if(language.equals("")){
            s = "<span style='color:red'>Please set a Language</span>";
        } else{
            this.language = language;
            m.put("language", language);
        }
        
        return s;
    }
 
    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public String setSecurityQuestion(String securityQuestion) {
        String s = "";
        
        if(securityQuestion.equals("")){
            s = "<span style='color:red'>You must enter a security question</span>";
        } else{
            this.securityQuestion = securityQuestion;
            m.put("securityQuestion", securityQuestion);
        }
        
        return s;
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public String setSecurityAnswer(String securityAnswer) {
        String s = "";
        
        if(securityAnswer.equals("")){
            s = "<span style='color:red'>You must set an answer to your security question.</span>";
        } else{
            this.securityAnswer = securityAnswer;
            m.put("securityAnswer", securityAnswer);
        }
        
        return s;
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
        return email == null ? false : true;
    }
    
    public Map getProperties(){
        return m;
    }
}
