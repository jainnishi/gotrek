package com.compro.sqlcommands;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

abstract public class AbstractCommand {
	protected List<String> parameter = new ArrayList<String>();
	abstract public int execute()throws SQLException;

}
