package app.thubu.model;

import java.util.*;

public class PostMutterLogic {

	public void execute(Mutter mutter, List<Mutter> mutterList)
	{
		mutterList.add(0, mutter);
	}
}
