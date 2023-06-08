[top]
components : gossip

[gossip]
type : cell
dim : (10, 10, 2)
delay : transport
defaultDelayTime : 1000
border : wrapped 
neighbors :  		    gossip(-1,0,0)  
neighbors : gossip(0,-1,0)  gossip(0,0,0)  gossip(0,1,0)
neighbors :   		    gossip(1,0,0)  
neighbors :  		    gossip(-1,0,1) 
neighbors : gossip(0,-1,1)  gossip(0,0,1)  gossip(0,1,1)
neighbors :  		    gossip(1,0,1)  
initialvalue : 0
initialcellsvalue : gossip.val
zone : people { (0,0,0)..(9,9,0) }
zone : problty { (0,0,1)..(9,9,1) }


[people]
rule : { if ((if(((-1,0,0) = 1 and (-1,0,1) > 0.25),1,0) + if(((0,-1,0) = 1 and (0,-1,1) > 0.25),1,0) + if(((0,1,0) = 1 and (0,1,1) > 0.25),1,0) + if(((1,0,0) = 1 and (1,0,1) > 0.25),1,0)) >= 1, 1, 0) } 1000 { cellPos(2) = 0 and (0,0,0) = 0 and stateCount(1) > 0 }
rule : { if (random < 0.10,0,1) } 1000 { cellPos(2) = 0 and (0,0,0) = 1 }
rule : 0 1000 { t }


[problty]
rule : { random } 1000 { cellPos(2) = 1 and (0,0,1) = 1 }
rule : 0 1000 { t }

