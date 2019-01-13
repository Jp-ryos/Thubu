package app.thubu.model;

public class LoginLogic {

	public boolean execute(User usr) 
	{
		return usr.getPass().equals("qwerty"); 
	}
}
