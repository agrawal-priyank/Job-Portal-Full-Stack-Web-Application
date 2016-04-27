package edu.neu.exception;

public class AdException extends Exception{

	private static final long serialVersionUID = 1L;

	public AdException(String message)
	{
		super(message);
	}
	
	public AdException(String message, Throwable cause)
	{
		super(message,cause);
	}
}