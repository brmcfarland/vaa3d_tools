#!/bin/bash
echo '========================================'
echo ' build itk and itk_vaa3d_plugins '
echo ' version 1.0 '
echo ' author ping yu '
echo ' date 2012-8-6'
echo '========================================'

ITK_DIR=
ITK_BUILD_DIR=ITK_build
V3D_SOURCE_DIR=../../../v3d_external
V3D_SOURCE_DIR_FILE=V3D_Source_dir.tmp
V3D_BINARY_DIR=
V3D_BASIC_C_FUN_SOURCE_DIR=
PLUGINS_BUILD_DIR=plugins_build
ITK_SOURCE_DIR=ITK
ITK_PLUGINS_DIR=

SYSTEM_NAME=`uname`
SYSTEM_TYPE=`uname -m`

echo "System is $SYSTEM_NAME, System type is $SYSTEM_TYPE";
echo ' ------------------------------'
echo  'build or rebuild ITK?(y/n): '
read build_ITK

build_itk_library()
{
	if [ ! -d $ITK_SOURCE_DIR ];then
     echo "git clone git://itk.org/ITK.git"
     git clone git://itk.org/ITK.git
	fi
  if [[ $? -ne 0 ]];then
     git checkout v4.7.0
  else
    echo "Error running git checkout for ITK. Please check your ITK git repo: ITK"
  fi

	if [ -d $ITK_BUILD_DIR ]; then
		rm -rf $ITK_BUILD_DIR
	fi
	mkdir $ITK_BUILD_DIR && cd $ITK_BUILD_DIR
	ITK_DIR=`pwd`
	echo $ITK_DIR
	if [ $SYSTEM_NAME = 'Darwin' ]; then
		cmake -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DITK_USE_REVIEW=ON  -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-fPIC -O3 -stdlib=libstdc++" -DCMAKE_C_FLAGS_RELEASE="-fPIC -O3" ../$ITK_SOURCE_DIR
	elif [ $SYSTEM_NAME = 'Linux' -a $SYSTEM_TYPE = 'x86_64' ]; then
		cmake -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DITK_USE_REVIEW=ON  -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-fPIC -O3" -DCMAKE_C_FLAGS_RELEASE="-fPIC -O3" ../$ITK_SOURCE_DIR
	else
		cmake -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DITK_USE_REVIEW=ON ../$ITK_SOURCE_DIR
	fi
	make -j4
	cd ../
}
if [ $build_ITK = "y" -o $build_ITK = "Y" ]; then
	build_itk_library
else
	if [ ! -d $ITK_BUILD_DIR ]; then
		echo 'No itk library folder found, Now build ITK !'
		build_itk_library
	fi
	ITK_DIR=`pwd`
   	ITK_DIR=$ITK_DIR'/'$ITK_BUILD_DIR
	echo "ITK library is $ITK_DIR	"
fi
echo "======================================"
validate_vaa3d_source_dir()
{
	while [ true ]; do
		echo " Please set the Vaa3D Source dir: "
		read V3D_SOURCE_DIR
		if [ -d $V3D_SOURCE_DIR/v3d_main ]; then
			break
		else
			echo 'Path is Wrong, do it again'
		fi
	done
}
echo " now build plugins"
echo " Set the Vaa3D path yourself?(y/n)"
read IS_SET_PATH
if [ $IS_SET_PATH = "Y" -o $IS_SET_PATH = "y" ]; then
	validate_vaa3d_source_dir
else
	if [ ! -f $V3D_SOURCE_DIR_FILE ]; then
		echo "No origin path set. Path should be set first time"
		echo '------------------------------------------------'
		validate_vaa3d_source_dir
	else
		read V3D_SOURCE_DIR < $V3D_SOURCE_DIR_FILE
		echo 'Your origin Vaa3d source dir is: ' $V3D_SOURCE_DIR
	fi
fi	
if [ ! -d $V3D_SOURCE_DIR/v3d_main ]; then 
	echo 'Your path do not have the source, please set it again'
	validate_vaa3d_source_dir
fi
echo $V3D_SOURCE_DIR > $V3D_SOURCE_DIR_FILE

V3D_BASIC_C_FUN_SOURCE_DIR=$V3D_SOURCE_DIR/v3d_main/basic_c_fun
V3D_BINARY_DIR=$V3D_SOURCE_DIR/bin
echo 'Your vaa3d basic_c_fun dir is :'$V3D_BASIC_C_FUN_SOURCE_DIR
echo 'you binary dir is :'$V3D_BINARY_DIR
if [ -d $PLUGINS_BUILD_DIR ]; then
	cd $PLUGINS_BUILD_DIR
else
	mkdir $PLUGINS_BUILD_DIR && cd $PLUGINS_BUILD_DIR
fi
cmake -DV3D_BASIC_C_FUN_SOURCE_DIR=$V3D_BASIC_C_FUN_SOURCE_DIR -DV3D_BINARY_DIR=$V3D_BINARY_DIR  -DCMAKE_CXX_FLAGS="-fPIC -O3 -stdlib=libstdc++" -DITK_DIR=$ITK_DIR -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-w -g" ../
make -j4
echo '============================'
echo 'Now start to install plugins'
ITK_PLUGINS_DIR=$V3D_BINARY_DIR/plugins/ITK
if [ -d $ITK_PLUGINS_DIR ]; then
	echo 'Delete the old ITK plugins'
   rm -rf $ITK_PLUGINS_DIR
fi
make install
cd ../
