MODULE Module1
	CONST robtarget Target_10:=[[2055.5,0.004,1977.5],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30:=[[2100,120,1331.513683654],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20:=[[2100,120,200],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_50:=[[2333.56728576,47,700],[0.707106781,0,0.707106781,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_40:=[[2800,47,700],[0.707106781,0,0.707106781,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_50_3:=[[2333.56728576,47,700],[0.707106781,0,0.707106781,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70:=[[2055.988286208,1.517761918,1977.477993132],[0,1,0,0],[0,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Rishabh Verma
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Application - Machine Tending
        !Rishabh Verma BT19MEC092
        Path_10;
    ENDPROC
	PROC Path_10()
	    MoveL Target_10,v100,z100,gripper\WObj:=wobj0;
	    MoveL Target_30,v1000,z100,gripper\WObj:=wobj0;
	    MoveL Target_20,v1000,z100,gripper\WObj:=wobj0;
	    WaitTime 1;
	    PulseDO at_part_1;
	    MoveL Target_50,v1000,fine,gripper\WObj:=wobj0;
	    MoveL Target_40,v1000,fine,gripper\WObj:=wobj0;
	    WaitTime 1;
	    PulseDO det_part_1;
	    MoveL Target_40,v1000,z100,gripper\WObj:=wobj0;
	    MoveL Target_50_3,v1000,z100,gripper\WObj:=wobj0;
	    MoveL Target_70,v1000,z100,gripper\WObj:=wobj0;
	ENDPROC
ENDMODULE