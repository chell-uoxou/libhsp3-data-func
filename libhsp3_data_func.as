/***************************************************************************************************
*                                libhsp3-data-func version 0.1 beta                                *
*                                        Made by Mikatofu31                                        *
*                                          on 05/27/2018                                           *
***************************************************************************************************/

#module libhsp3_data
	#defcfunc fn_getline var sourcestring,int linenum
		sdim notepad_var,131072
		notesel sourcestring
		noteget notepad_var,linenum
	return notepad_var
	
	#defcfunc fn_max var sourcestring
		notesel sourcestring
	return notemax
	
	#defcfunc fn_size var sourcestring
		notesel sourcestring
	return notesize
	
	#defcfunc fn_grep var string,str grepstr
		sdim notepad_var,131072
		sdim notepad_var_m,65536
		notesel string
		repeat notemax
			noteget notepad_var_m,cnt
			if instr(notepad_var_m,0,grepstr)!-1{
				notepad_var+=notepad_var_m+"\n"
			}
		loop
		notepad_var=strmid(notepad_var,0,strlen(notepad_var)-2)
	return notepad_var
	
#global

