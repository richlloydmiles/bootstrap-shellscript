    #!/bin/bash

echo -e "------------------------------------------------------------------- "
echo -e "------------------- \e[32mWelcome to Wordpress Scriptr\e[0m ------------------ "
echo -e "------------------------------------------------------------------- "
echo -e "by \e[37mRichard Miles\e[1;36m richard@feedmymedia.co.za\e[0m"
echo -e "------------------------------------------------------------------- "
# sleep 3
echo -e "--------------------"
echo -e "Begin by following the prompts"
echo -e "--------------------"
echo -e "\e[31mNB: Any infomation you enter will overwrite previously saved files\e[0m"
echo -e "\e[0m--------------------"

#FUNCTIONS
#-------------------------------------------------------------------

	compare () {
	read INPUT
  	if [ "$INPUT" = "" ]; then
	echo $2
	else
		if [[ $INPUT = " " ]]; then
			echo $2
		else
			echo $INPUT
		fi
	fi	
} 

#-------------------------------------------------------------------




    #   \e[36m = default (green)
    #   \e[33m = value (yellow)
    #   \e[1m = input (bold)   
# Black        0;30     Dark Gray     1;30
# Blue         0;34     Light Blue    1;34
# Green        0;32     Light Green   1;32
# Cyan         0;36     Light Cyan    1;36
# Red          0;31     Light Red     1;31
# Purple       0;35     Light Purple  1;35
# Brown/Orange 0;33     Yellow        1;33
# Light Gray   0;37     White         1;37
# 	____________________________________________
# 	
#	NAME 
# 	____________________________________________ 
	echo -e "\e[36m (default : \e[33m 'Bootstrap Features'\e[36m )\n \e[1mPlugin Name:"
		NAME=$(compare "Bootstrap Features" )
# 	____________________________________________
# 	
#	URI	
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m 'http://lsdev.biz'\e[36m )\n \e[1mPlugin Uri:" 
		URI=$(compare "http://lsdev.biz" )
# 	____________________________________________
# 	
#	Description	
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m 'Features plugin'\e[36m )\n \e[1mPlugin Description:" 
		DESC=$(compare "Features plugin" )
#	_________________________________________
# 	
#	Author
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m 'Richard Miles'\e[36m )\n \e[1mPlugin Author:" 
		AUTHOR=$(compare "Richard Miles" )
# 	____________________________________________
# 	
#	VERSION
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m '0.1.0'\e[36m )\n \e[1mPlugin Version:" 
	VERSION=$(compare "Richard Miles" )
# 	____________________________________________
# 	
#	AUTHOR URI
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m 'http://lsdev.biz'\e[36m )\n \e[1mPlugin Author URI:" 
		VERSION=$(compare "Richard Miles" )
# 	____________________________________________
# 	
# 	CREATE INCLUDE FILE
# 	____________________________________________
# 	____________________________________________
echo -e "------------------------------------------------------------------- "
echo -e "------------------------ \e[32mBASIC PLUGIN CREATED\e[0m --------------------- "
echo -e "------------------------------------------------------------------- "
# 	____________________________________________
# 	
#	POST TYPE
# 	____________________________________________ 
# 	
echo -e "\e[36m (default : \e[33m 'Feature'\e[36m )\n \e[1mSingular Name for Custom Post Type:" 
		SINGLE=$(compare "Feature" )

echo -e "\e[36m (default : \e[33m 'Features'\e[36m )\n \e[1mPlural Name for Custom Post Type:" 
	PLURAL=$(compare "Features" )

LCSINGLE=$(echo $SINGLE | tr "[:upper:]" "[:lower:]")
LCPLURAL=$(echo $PLURAL | tr "[:upper:]" "[:lower:]")

# 	____________________________________________
# 	
#	POST TYPE
# 	____________________________________________ 
# 
mkdir "lsx_$LCSINGLE";
cp -r "core" "lsx_$LCSINGLE/Custom-Meta-Boxes"
cd "lsx_$LCSINGLE";
echo -e "<?php\n/**\n* Plugin Name: $NAME\n* Plugin URI: $URI\n* Description: $DESC\n* Author: $AUTHOR\n* Version: $VERSION\n* Author URI: $AUTHORURI\n **/\n\n" > "lsx_$LCSINGLE.php"
echo -e "// Post Type and Custom Fields\ninclude plugin_dir_path( __FILE__ ) . '/class-bs-$LCPLURAL-admin.php';\n// Shortcode and Template Tag\ninclude plugin_dir_path( __FILE__ ) . '/class-bs-$LCPLURAL.php';\n//Widget\ninclude plugin_dir_path( __FILE__ ) . '/class-bs-$LCPLURAL-widget.php';" >> "lsx_$LCSINGLE.php"

# $BS_Custom = new BS_Custom();
# $BS_Features_Admin = new BS_Features_Admin();
# add_action('widgets_init', create_function('', 'return register_widget("BS_Custom_Widget");'));


# INSERT AT THE BEGINNING OF FILE
			# { printf "<?php\n/**\n* Plugin Name: $NAME\n* Plugin URI: $URI\n* Description: $DESC\n* Author: $AUTHOR\n* Version: $VERSION\n* Author URI: $AUTHORURI\n **/\n\n";
				# cat test.php;
				# } > temp.php && mv temp.php test.php
