
# search all cpp file in current directory and save thest file to variable SRC_LIST
# aux_source_directory(dir VAR)
aux_source_directory(. SRC_LIST)

add_executable(main ${SRC_LIST})
