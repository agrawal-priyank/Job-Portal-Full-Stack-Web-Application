package edu.neu.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import edu.neu.pojo.Employer;
import edu.neu.pojo.Person;

public class EmployerValidator implements Validator{
    public boolean supports(Class aClass)
    {
        return aClass.equals(Person.class);
    }

    public void validate(Object obj, Errors errors)
    {
        Employer employer = (Employer) obj;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "employerName", "error.invalid.employer", "Employer Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "websiteUrl", "error.invalid.employer", "Website Url Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "streetAddress", "error.invalid.employer", "Street Address Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "error.invalid.employer", "City Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state", "error.invalid.employer", "State Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "error.invalid.employer", "Country Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress", "error.invalid.employer", "Email Address Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.employer", "Password Required");
    }
}
