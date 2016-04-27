package edu.neu.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import edu.neu.pojo.Person;

public class PersonValidator implements Validator{
    public boolean supports(Class aClass)
    {
        return aClass.equals(Person.class);
    }

    public void validate(Object obj, Errors errors)
    {
        Person person = (Person) obj;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.person", "First Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "error.invalid.person", "Last Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "streetAddress", "error.invalid.person", "Street Address Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "error.invalid.person", "City Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state", "error.invalid.person", "State Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "error.invalid.person", "Country Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress", "error.invalid.person", "Email Address Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.person", "Password Required");
    }
    
}
