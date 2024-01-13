# source files in this project 
PROJECT_NAME=assg10

assg_src  = APriorityQueue.cpp \
	    AQueue.cpp \
	    Job.cpp \
	    LPriorityQueue.cpp \
	    LQueue.cpp \
	    Queue.cpp \
	    QueueException.cpp

test_src  = ${PROJECT_NAME}-APriorityQueue-tests.cpp \
	    ${PROJECT_NAME}-AQueue-tests.cpp \
	    ${PROJECT_NAME}-LPriorityQueue-tests.cpp \
	    ${PROJECT_NAME}-LQueue-tests.cpp \
	    ${assg_src}

sim_src   = ${PROJECT_NAME}-sim.cpp \
	    ${assg_src}

# template files, list all files that define template classes
# or functions and should not be compiled separately (template
# is included where used)
template_files =

# assignment description documentation
assg_doc  = ${PROJECT_NAME}.pdf

# common targets and variables used for all assignments/projects
include include/Makefile.inc

# assignment header file specific dependencies
${OBJ_DIR}/APriorityQueue.o: ${SRC_DIR}/APriorityQueue.cpp ${INC_DIR}/APriorityQueue.hpp
${OBJ_DIR}/AQueue.o: ${SRC_DIR}/AQueue.cpp ${INC_DIR}/AQueue.hpp
${OBJ_DIR}/Job.o: ${SRC_DIR}/Job.cpp ${INC_DIR}/Job.hpp
${OBJ_DIR}/LPriorityQueue.o: ${SRC_DIR}/LPriorityQueue.cpp ${INC_DIR}/LPriorityQueue.hpp
${OBJ_DIR}/LQueue.o: ${SRC_DIR}/LQueue.cpp ${INC_DIR}/LQueue.hpp
${OBJ_DIR}/Queue.o: ${SRC_DIR}/Queue.cpp ${INC_DIR}/Queue.hpp
${OBJ_DIR}/QueueException.o: ${SRC_DIR}/QueueException.cpp ${INC_DIR}/QueueException.hpp
${OBJ_DIR}/${PROJECT_NAME}-APriorityQueue-tests.o: ${SRC_DIR}/${PROJECT_NAME}-APriorityQueue-tests.cpp ${INC_DIR}/APriorityQueue.hpp ${INC_DIR}/Job.hpp ${INC_DIR}/QueueException.hpp
${OBJ_DIR}/${PROJECT_NAME}-AQueue-tests.o: ${SRC_DIR}/${PROJECT_NAME}-AQueue-tests.cpp ${INC_DIR}/AQueue.hpp ${INC_DIR}/QueueException.hpp
${OBJ_DIR}/${PROJECT_NAME}-LPriorityQueue-tests.o: ${SRC_DIR}/${PROJECT_NAME}-LPriorityQueue-tests.cpp ${INC_DIR}/LPriorityQueue.hpp ${INC_DIR}/QueueException.hpp
${OBJ_DIR}/${PROJECT_NAME}-LQueue-tests.o: ${SRC_DIR}/${PROJECT_NAME}-LQueue-tests.cpp ${INC_DIR}/LQueue.hpp ${INC_DIR}/QueueException.hpp
${OBJ_DIR}/${PROJECT_NAME}-sim.o: ${SRC_DIR}/${PROJECT_NAME}-sim.cpp ${INC_DIR}/Queue.hpp
