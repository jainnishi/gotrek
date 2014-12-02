package com.compro.services.trekmanager;

import java.util.List;

import com.compro.entity.Trek;

public interface TrekHandler {
	public static final int SUCCESS = 1;
	public static final int FAILURE = 0;
	public int createTrek(Trek trek);
	//public void getTrek(String uid,String trkid);
	//public boolean isValidTrek();
	//public void deleteTrek(Trek trek);
	public List<Trek> getLatestTreks();
}
