#ifndef _COMPILE_H_
#define _COMPILE_H_

#define watch_dog
#define sd_upgrade

//
//#define FLASH_EEROM_DEBUG
//#define TW8823_DEBUG
#define HannStar07
//#define araba_digi_tv      //外接数字电视模块(tw)


#define _ENABL_CES


		#define MCU_VER_Part1  01
		#define MCU_VER_Part2  01
		#define MCU_VER_Part3  01
		#define MCU_VER_Part4  01
//#define    MCU_VERSION     "0001"

//#define HIT2_TUNER // TDA7706

#ifndef sd_upgrade		
#define MCU_VERSION  "MT02"
#else
#define MCU_VERSION  "0003"
#endif
#define IAP_VERSION  "0002"

#define WINCA 		C802//C004//CE8904//



#define HDWARE_NO_VERSION  "V100"

#define HDWARE_VERSION  "V1.3"
enum			//	Sys.custom_sel
{
	CUSTOMER_WINCA=0,
	CUSTOMER_UKRAINE_MK=1,
	CUSTOMER_RUSSIA_VDS=2,
	CUSTOMER_JAVIER=3,
	CUSTOMER_SAUDI_AVLON=4,//#if S100_Saudi_Aulon_TEST     //lxg20130329  沙特沙龙客户
};

//#define	ADAU1401_EN		//	ADAU1401 调试使能		LZS 		2012-9-3

//#define PANEL_TYPE			Panelhannstar07_DT	
//************************************************
//-----------------------------------
#define C001			1     
#define C004			4
#define C064			64     
#define C065			65    
#define C072			72
#define C059			59    
#define C098			98    
#define C138			138    
#define C145			145    

#define C802			802     

#define C999			999     

#define C209                  209   // 
#define C210                  210   // 
#define C237                  237   // 
#define C224                  224   // 
//20120924
#define C026			26
#define C169			169
#define C227			227
#define C229			229
#define C254			254
#define C777			777
#define C280			280
#define C228			228


/*
//#define CE5906			1                            
//#define CE5908			2
#define CE5628			3
#define CE8903			4//FORD
#define CE8904			5//速腾
#define CE8906			6//现代雅尊
#define CE8908			7//现代新胜达
#define CE8909			8//CRV
#define CE8910			9//CROWN
#define CE8912			10//MAZIDA
#define CE8913			11///4he1
#define CE8915			12//CHERY
#define CE8916			13//PASSAT
#define CE8917			14//标志307
#define CE8918			15//RAV4
#define CE8929			16//SUZUKI weitela
#define CE6903			17//
#define CE8901			18//NISIAN
#define CE8919			19//opel
#define CE8920			20//新景程
#define CE8921			21//通用GMC
#define CE8923			22//赛拉图

#define CE8928			23//TOYOTA  奥瑞斯
#define CE3626			24//
#define CE8902			25//corrola
#define CE8932			26//金杯8901配框
#define CE8933			27//凯美瑞
#define CE8936			28//现代悦动
#define CE8942			29//大众途锐
#define CE8935			30//汉兰达
#define CE8939			31//福特开拓者
#define CE8938			32//起亚福瑞迪
#define CE8941			33//起亚--索兰托
#define CE8946			34//起亚--新赛拉图
#define CE8947			35//现代IX35
#define CE8943			36//现代I 30
//#define CE8940			37//FORD WDLY
#define CE8944			38//思域-本田
#define CE8945			39//科鲁兹雪佛兰//--------------------------------------------------
#define CE8948			40//朗逸-大众
#define CE8949			41//A3
#define CE8950			42//A4
//#define CE8951			43//雅阁本田
#define CE8952			44//宝马C3
//#define CE8954			45//天簌-日产
#define CE8956			46//欧蓝德三凌
#define CE8957			47//B50
#define CE8958			48//B70
#define CE8959			49//雷诺/梅甘娜
#define CE8999			50//HONDA
#define CE8953                    51//铃木
#define CE8934                    52//马自达3  
#define CE8905			53//斯柯达明锐
#define CE8962                    54//森林人
#define CE8963			55//丰田卡罗拉
#define CE8965                    56//丰田 新霸道
#define CE8960                    57//兰德酷路泽
#define CE8974                    58//智跑
#define CE8964                    59//新凯美瑞
#define CE8968                    60//奔驰A B级
#define CE8961                    61//新力狮
#define CE8967                   62//北京现代(瑞纳)
#define CE8980                    63//BMC
#define CE8971			64//丰田新花冠
#define CE8966			65// 荣威350
#define CE8979			66//奇瑞  A3
#define CE8978			67//奥迪TT
#define CE8981			68// 2011款朗逸
#define CE8977                  69 //长城C30
#define CE8969                 70 //长城H5
#define CE8982                 71 //宝马E39
#define CE8970             72 //日产玛驰
#define CE8975            73//现代索拉塔
#define CE8976            74//起亚//东风瑞达1-17
#define CE8984            75//丰田锐志
#define CE8922            76//长城C30
#define CE8983           77//标志408
#define CE8924          78//现代
#define CE8987         79//奔驰
#define CE8988       80//雪铁龙世嘉
#define CE8986     81//起亚CEED
#define CE8991     82//起亚K5
#define CE8990     83//奔驰E级
#define CE8972    84//英朗
#define CE8925             85//广汽传祺
#define CE8985      86//标志206
#define CE8926     87//三菱劲炫
#define CE8931             88//丰田RUSH
#define CE8993             89//奔驰C级
#define CE8930             90//现代I20
#define CE8927            91//别克凯越
#define CE8905_2			92//斯柯达明锐
#define CE8937     93//三菱蓝瑟
#define CE8995                 94 //宝马320I
#define CE8992               95 //现代悦动
#define CE8952_1			96//宝马C3
#define CE8997		97//宝马C3.
*/


//-----------------------------------
/*#define	No_cantype	       0  //
#define	tuguan_cantype	       1  //CE8904
#define	opel_cantype 	       2  // CE8919
#define	VW_simple_cantype	 3    //CE8904
#define	cruze_simple_cantype	         4   //CE8945
#define	VW_hechi_cantype	5   //CE8904
#define	prodo_cantype	        6    //ce8910   CE8965
#define	accord_cantype	        7   
#define	ix35_cantype	      8  //IX35  2.4L 才带总线CE8947
#define	B50_cantype	       9  //CE8957
#define	ix35_hechi_cantype	10   //CE8947
#define	mazda3_cantype  	11   //CE8934
#define	Megane_cantype  	12 //梅甘娜
#define	Benz_cantype  	13 //奔驰B200
#define	bz408_cantype	         14   //CE8919
#define	bz206_cantype	         15   //CE8985
#define	L200_cantype	         16   //L200
#define	civic_cantype	         17   //
#define	B70_cantype	       18  //CE8958		
#define	BMW3_cantype	       19  //CE8995	
#define	camry_cantype	       20  //CE8964
#define	Azera_cantype	       21  //CE8964 雅尊
#define	Mondeo_cantype	         22   //CE8903  
#define	Focus_cantype	       23  //CEA150	
*/
//根据S100 通信协议定义
#define No_cantype	  				0x00  	//
#define tuguan_cantype  				0x01  	//大众
#define cruze_simple_cantype  		0x02 	//通用
#define hyundai_cantype   			0x03	//现代&起亚 
#define prado_cantype   				0x04	//普拉多
#define jeep_cantype  				0x05 	//尚摄吉普，铂锐
#define opel_cantype     				0x06   	//马自达，旧款欧宝
#define fiesta_cantype  				0x07 	//福特嘉年华
#define outlander_cantype  			0x08   	// 欧蓝德

#define AudiA3A4_cantype  			0x09   	//XX

#define B50_cantype     				0x0A     	// 奔腾B50
#define Megane2_cantype				0x0B    	//梅甘娜2 
#define mazda3_cantype  				0x0C   	//马自达3
#define AudiQ5_cantype  				0x0d  	//奥迪Q5
#define civic_cantype   				0x0E   	//12款新思域
#define Azera_cantype				0x0f	//现代雅尊  lts20121203
#define Null_cantype  			0x10   	//XX
#define CRV_cantype   				0x11 	//CRV
#define bz207_cantype   				0x12 	//标志207(和驰)
#define Encore_Onstar_cantype 		0x13	//昂科拉(安吉星)
#define camry_cantype   				0x14
#define benz_b200_cantype   			0x15
#define Mondeo_cantype	      			0x16  	//    22   //CE8903   蒙迪欧     //d_add_2012-10-8
#define VOLVO_cantype	                    	0x17  	//   沃尔沃
#define Megane3_cantype				0x18    	//梅甘娜3 
#define Encore_cantype				0x19      //CE8921   昂科雷     //	LZS		2012-10-30
#define bz307_cantype				0x1A    	//  标志307，使用s60   bz408的协议       
#define bz408_cantype				0x1B        //  标志408
#define B70_cantype					0x1C  	//一汽奔腾B70,tao add ,2012-11-30
#define Focus_cantype				0x1D    
#define BWM_X1_cantype 			0x1E//
#define bz206_cantype  	 			0x1F 	//标志206(欣朴)
#define BWM320_cantype 				0x20 	//宝马320
//#define IX45_cantype					0x22	//现代&起亚 IX45
#define L200_cantype                            0x21	//三菱L200
#define bz308_cantype  				0x22  	//标志308
#define teana_cantype  					 0x23//13款新天籁  
#define CitroenC4C5_cantype 			0x24 	//雪铁龙C4/C5
#define AudiA8_cantype  0x25  //奥迪A8
#define BWM_X3_cantype 0x26 //宝马X3
//
#define Chrysler_hechi_cantype  0x29  //Chrysler

//#define canbus_type tuguan_cantype

#endif
