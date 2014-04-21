package com.cs542.nba.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cs542.nba.model.ClusterVariable;
import com.cs542.nba.model.Combo;
import com.cs542.nba.model.Combo2;
import com.cs542.nba.model.Combo3;
import com.cs542.nba.model.Combo4;
import com.cs542.nba.model.Combo5;
import com.cs542.nba.model.ComboInfo;
import com.cs542.nba.model.Combos;
import com.cs542.nba.model.PlayerProfile;
import com.cs542.nba.model.PlayerStats;
import com.cs542.nba.persistence.SqlManager;
import com.cs542.nba.utils.Kmeans;

@Controller
@RequestMapping("api")
public class ApiController {

	ArrayList<ClusterVariable> clusteredDataset = new ArrayList<ClusterVariable>();
	ArrayList<ComboInfo> comboInfo = new ArrayList<ComboInfo>();
	
	
	public ArrayList<ComboInfo> getComboInfo() {
		return comboInfo;
	}

	public void setComboInfo(ArrayList<ComboInfo> comboInfo) {
		this.comboInfo = comboInfo;
	}

	@RequestMapping(value="stat/players")
	@ResponseBody
	public ArrayList<PlayerStats> getPlayerStats() {
		return SqlManager.getAllPlayerStats(1, 300);
	}
	
	@RequestMapping(value="cluster/{clusterNumber}")
	@ResponseBody
	public ArrayList<ComboInfo> getPlayerDetais(@PathVariable("clusterNumber") int clusters) {
		
		ArrayList<ClusterVariable> dataset = new ArrayList<ClusterVariable>();
		ArrayList<PlayerStats> stats = getPlayerStats();		
		for (PlayerStats s : stats) {
			dataset.add(new ClusterVariable(s));
		}		
		Kmeans kpp = new Kmeans();
		clusteredDataset = kpp.lloyd(clusters, dataset);
		
//		ArrayList<ComboInfo> combo = new ArrayList<ComboInfo>();
		for (int i = 0; i < stats.size(); i++) {
			PlayerStats s = stats.get(i);
			ClusterVariable var = clusteredDataset.get(i);
			PlayerProfile profile = SqlManager.getPlayerProfile(s.getProfile_id());
			if (profile == null)
				continue;
			comboInfo.add( new ComboInfo(profile, s, var) );
		}
		
		return comboInfo;
	}
	
	@RequestMapping(value="filter/{filter}")
	@ResponseBody
	public ArrayList<ComboInfo> getFilterGroup(@PathVariable("filter") int filterGroup) {
		ArrayList<ComboInfo> combo = new ArrayList<ComboInfo>();
		if (clusteredDataset.size() == 0)
			return combo;
		
		ArrayList<PlayerStats> stats = getPlayerStats();
		for (int i = 0; i < stats.size(); i++) {
			if (clusteredDataset.get(i).getGroup() == filterGroup) {
				PlayerStats s = stats.get(i);
				ClusterVariable var = clusteredDataset.get(i);
				PlayerProfile profile = SqlManager.getPlayerProfile(s.getProfile_id());
				if (profile == null)
					continue;
				combo.add( new ComboInfo(profile, s, var) );
			}
		}
		return combo;
	}
	
	public ArrayList<Combo> getCombo() {
		int cluster = 10;
		ArrayList<Combo> combo = new ArrayList<Combo>();
		//ArrayList<ComboInfo> stats = getPlayerDetais(cluster);
		ArrayList<ComboInfo> stats = this.getComboInfo();
	
			for(int i=1; i<cluster+1; i++){
				float SumWinRatio=0,AvgWinRatio= 0,count=0;
				for(int j=0; j<stats.size(); j++){				
					if(stats.get(j).getV().getGroup() == i){
					float winRatio = SqlManager.getWinRatio(stats.get(j).getProfile().getProfile_id());
					if(winRatio>50){
					SumWinRatio += winRatio;
					count++;
					}
				}
			}
			AvgWinRatio = SumWinRatio/count;
			combo.add(new Combo(i, AvgWinRatio));
			
		}
			
		return combo;
	}
	
	
	@RequestMapping(value="combo")
	@ResponseBody
	public Combos getCombos() {
		int cluster = 10;
		ArrayList<Combo2> Combo2 = new ArrayList<Combo2>();
		ArrayList<Combo> combo = this.getCombo();	
		
		for(int i=1; i<cluster; i++){  //i is the first cluster number
			float AvgWinRatio= 0;
			for(int j=i+1; j<cluster+1; j++){	//j is for the second cluster 							
				float winRatio1 = combo.get(i-1).getWinRatio();
				float winRatio2 = combo.get(j-1).getWinRatio();
				AvgWinRatio = (winRatio1+winRatio2)/2;
		
				Combo2.add(new Combo2(i,j, AvgWinRatio));
		
	}
		}

		ArrayList<Combo3> Combo3 = new ArrayList<Combo3>();

		//ArrayList<ComboInfo> stats = getPlayerDetais(9);
		for(int i=1; i<cluster-1; i++){  //i is the first cluster number
			float AvgWinRatio= 0;
			for(int j=i+1; j<cluster; j++){	//j is for the second cluster 
				for(int k=j+1; k<cluster+1; k++){
				
				float winRatio1 = combo.get(i-1).getWinRatio();
				float winRatio2 = combo.get(j-1).getWinRatio();
				float winRatio3 = combo.get(k-1).getWinRatio();
				AvgWinRatio = (winRatio1+winRatio2+winRatio3)/3;
		
				Combo3.add(new Combo3(i,j,k, AvgWinRatio));
				}
		
	}
		}

		ArrayList<Combo4> Combo4 = new ArrayList<Combo4>();

		//ArrayList<ComboInfo> stats = getPlayerDetais(9);
		for(int i=1; i<cluster-2; i++){  //i is the first cluster number
			float AvgWinRatio= 0;
			for(int j=i+1; j<cluster-1; j++){	//j is for the second cluster 
				for(int k=j+1; k<cluster; k++){
					for(int l=k+1;l<cluster+1;l++){
				
				float winRatio1 = combo.get(i-1).getWinRatio();
				float winRatio2 = combo.get(j-1).getWinRatio();
				float winRatio3 = combo.get(k-1).getWinRatio();
				float winRatio4 = combo.get(l-1).getWinRatio();
				AvgWinRatio = (winRatio1+winRatio2+winRatio3+winRatio4)/4;		
				Combo4.add(new Combo4(i,j,k,l, AvgWinRatio));
				}
				}
		
	}
		}

		ArrayList<Combo5> Combo5 = new ArrayList<Combo5>();

		//ArrayList<ComboInfo> stats = getPlayerDetais(9);
		for(int i=1; i<cluster-3; i++){  //i is the first cluster number
			float AvgWinRatio= 0;
			for(int j=i+1; j<cluster-2; j++){	//j is for the second cluster 
				for(int k=j+1; k<cluster-1; k++){
					for(int l=k+1;l<cluster;l++){
						for(int m=l+1;m<cluster+1;m++){
				float winRatio1 = combo.get(i-1).getWinRatio();
				float winRatio2 = combo.get(j-1).getWinRatio();
				float winRatio3 = combo.get(k-1).getWinRatio();
				float winRatio4 = combo.get(l-1).getWinRatio();
				float winRatio5 = combo.get(m-1).getWinRatio();
				AvgWinRatio = (winRatio1+winRatio2+winRatio3+winRatio4+winRatio5)/5;		
				Combo5.add(new Combo5(i,j,k,l,m, AvgWinRatio));
				}
				}
				}
		
	}
		}
		Combos Combos = new Combos(combo,Combo2,Combo3,Combo4,Combo5);
		return Combos;
	}
}
