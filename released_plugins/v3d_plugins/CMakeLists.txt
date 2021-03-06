# Visit plugin subdirectories if and only if they have a CMakeLists.txt file
if(${JANELIA_BUILD} STREQUAL "ON") # Ensure that the Janelia version of plugins is uused
	file(GLOB CMAKE_DIRS RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "Janelia_*/CMakeLists.txt")
	set(janelia_plugins "")
	foreach(CMAKE_DIR ${CMAKE_DIRS})
		file(STRINGS "${CMAKE_DIR}" output)
		foreach(out_str ${output})
			string(FIND ${out_str} "configure_v3d_plugin" plugin)
			if(NOT ${plugin} STREQUAL "-1")
				string(REGEX REPLACE ".*configure_v3d_plugin\\((.*)\\)" "\\1" plugin_name ${out_str})
				list(APPEND janelia_plugins ${plugin_name})
			endif(NOT ${plugin} STREQUAL "-1")
		endforeach(out_str)
	    string(REPLACE "//CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
	    string(REPLACE "/CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
	    message(${CMAKE_DIR})
	    add_subdirectory(${CMAKE_DIR})
	endforeach()
	message("${janelia_plugins}")

	file(GLOB CMAKE_DIRS RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*/CMakeLists.txt")
	foreach(CMAKE_DIR ${CMAKE_DIRS})
		string(FIND ${CMAKE_DIR} "Janelia" tag)
		if(${tag} STREQUAL "-1")
			message("Processing ${CMAKE_DIR}")
			file(STRINGS "${CMAKE_DIR}" output)
			set(plugin_name FALSE)
			foreach(out_str ${output})
				string(FIND ${out_str} "configure_v3d_plugin" plugin)
				if(NOT ${plugin} STREQUAL "-1")
					string(REGEX REPLACE ".*configure_v3d_plugin\\((.*)\\)" "\\1" plugin_name ${out_str})
				endif(NOT ${plugin} STREQUAL "-1")
			endforeach(out_str)
			set(found_plugin 0)
			if(${plugin_name})
				# No configure_v3d_plugin command, so we assume this is a top-level CMakeLists file and 
				# send it on for processing
				set(found_plugin 1)
			else()	
				foreach(plugin ${janelia_plugins})
					if(${plugin_name} STREQUAL ${plugin})
						set(found_plugin 1)
					endif(${plugin_name} STREQUAL ${plugin})
				endforeach(plugin)
			endif(${plugin_name})
			if(NOT ${found_plugin})
			    string(REPLACE "//CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
			    string(REPLACE "/CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
			    message("Adding ${CMAKE_DIR}")
			    add_subdirectory(${CMAKE_DIR})
			 else()
			 	message("skipping ${CMAKE_DIR}")
			endif(NOT ${found_plugin})
		endif(${tag} STREQUAL "-1")
	endforeach()
else()
	file(GLOB CMAKE_DIRS RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*/CMakeLists.txt")
	foreach(CMAKE_DIR ${CMAKE_DIRS})
	    string(REPLACE "//CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
	    string(REPLACE "/CMakeLists.txt" "" CMAKE_DIR "${CMAKE_DIR}")
	    # message(${CMAKE_DIR})
	    add_subdirectory(${CMAKE_DIR})
	endforeach()
endif(${JANELIA_BUILD})
