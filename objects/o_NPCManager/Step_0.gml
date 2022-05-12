var hour = o_dayNightCycle.hours

//-----------------Shane / Beach boy-----------------
if(room == r_beach) {
	
	if(hour > phases.sunrise and hour < phases.sunset) {
		if(instance_exists(o_beachboy)) {
			global.shaneX = o_beachboy.x
			global.shaneY = o_beachboy.y
			global.shaneXP = o_beachboy.friendshipXP
			global.shaneLevel = o_beachboy.friendshipLevel
			global.shaneTalked = o_beachboy.talkedToday
			global.shaneTitle = o_beachboy.friendshipTitle
		}
	}
}

//**********************************************
//-----------------Village NPCS-----------------
//**********************************************

if(room == r_village) {
	
	if(hour > phases.sunrise and hour < phases.sunset) {
	//-----------------Idris // Florist-----------------
		if(instance_exists(o_florist)) {	
			global.idrisX = o_florist.x
			global.idrisY = o_florist.y
			global.idrisXP = o_florist.friendshipXP
			global.idrisLevel = o_florist.friendshipLevel
			global.idrisTalked = o_florist.talkedToday
			global.idrisTitle = o_florist.friendshipTitle
		}
	
		//-----------------Ava // Baker-----------------
		if(instance_exists(o_baker)) {	
			global.avaX = o_baker.x
			global.avaY = o_baker.y
			global.avaXP = o_baker.friendshipXP
			global.avaLevel = o_baker.friendshipLevel
			global.avaTalked = o_baker.talkedToday
			global.avaTitle = o_baker.friendshipTitle
		}
	
		//-----------------Hazel // Grandma-----------------
		if(instance_exists(o_grandma)) {	
			global.hazelX = o_grandma.x
			global.hazelY = o_grandma.y
			global.hazelXP = o_grandma.friendshipXP
			global.hazelLevel = o_grandma.friendshipLevel
			global.hazelTalked = o_grandma.talkedToday
			global.hazelTitle = o_grandma.friendshipTitle
		}
	
		//-----------------Wes // Hobo-----------------
		if(instance_exists(o_hobo)) {	
			global.wesX = o_hobo.x
			global.wesY = o_hobo.y
			global.wesXP = o_hobo.friendshipXP
			global.wesLevel = o_hobo.friendshipLevel
			global.wesTalked = o_hobo.talkedToday
			global.markoTitle = o_hobo.friendshipTitle
		}
		
		//-----------------Harrison // Competitor-----------------
		if(instance_exists(o_competitor)) {	
			global.harrisonX = o_competitor.x
			global.harrisonY = o_competitor.y
			global.harrisonXP = o_competitor.friendshipXP
			global.harrisonLevel = o_competitor.friendshipLevel
			global.harrisonTalked = o_competitor.talkedToday
			global.harrisonTitle = o_competitor.friendshipTitle
		}
		
		//-----------------Joselyn // Teacher-----------------
		if(instance_exists(o_teacher)) {	
			global.joselynX = o_teacher.x
			global.joselynY = o_teacher.y
			global.joselynXP = o_teacher.friendshipXP
			global.joselynLevel = o_teacher.friendshipLevel
			global.joselynTalked = o_teacher.talkedToday
			global.joselynTitle = o_teacher.friendshipTitle
		}
	
		//-----------------Marisa // Animal Seller-----------------
		if(instance_exists(o_animalseller)) {	
			global.marisaX = o_animalseller.x
			global.marisaY = o_animalseller.y
			global.marisaXP = o_animalseller.friendshipXP
			global.marisaLevel = o_animalseller.friendshipLevel
			global.marisaTalked = o_animalseller.talkedToday
			global.marisaTitle = o_animalseller.friendshipTitle
		}
	
	}
	
	//-----------------Antonio // Mstery Man-----------------
	if(instance_exists(o_antonio)) {	
		global.antonioX = o_antonio.x
		global.antonioY = o_antonio.y
		global.antonioName = o_antonio.antonioName
		global.antonioXP = o_antonio.friendshipXP
		global.antonioLevel = o_antonio.friendshipLevel
		global.antonioTalked = o_antonio.talkedToday
		global.antonioTitle = o_antonio.friendshipTitle
	}	
	
}
	

if(room == r_caveEntry) {
//-----------------Flynn // Blacksmith-----------------
	if(instance_exists(o_blacksmith)) {	
		global.flynnX = o_blacksmith.x
		global.flynnY = o_blacksmith.y
		global.flynnXP = o_blacksmith.friendshipXP
		global.flynnLevel = o_blacksmith.friendshipLevel
		global.flynnTalked = o_blacksmith.talkedToday
		global.flynnTitle = o_blacksmith.friendshipTitle
	}
}
