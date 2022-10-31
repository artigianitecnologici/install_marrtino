cd $HOME/src
tar -xzvf $HOME/install_marrtino/Melodic/srrg.tar.gz 
cd $HOME/ros/

 Link
 cd $HOME/ros/catkin_ws/src  
    ln -s $HOME/src/srrg/srrg_cmake_modules .   
    ln -s $HOME/src/srrg/srrg_core .   
    ln -s $HOME/src/srrg/srrg_core_ros .   
    ln -s $HOME/src/srrg/srrg_scan_matcher .  
    ln -s $HOME/src/srrg/srrg_mapper2d .  
    ln -s $HOME/src/srrg/srrg_mapper2d_ros .
    ln -s $HOME/src/spqrel_navigation .
    #ln -s $HOME/src/srrg/srrg2_navigation


# ROS packages

 if [ "$MACHTYPE" = "aarch64" ]; then \
       /bin/bash -ci "cd $HOME/ros/catkin_ws; catkin_make -j2" ; \
    elif [ "$MACHTYPE" = "armv7l" ]; then \
       /bin/bash -ci "cd $HOME/ros/catkin_ws; catkin_make -j1" ; \
    else \
       /bin/bash -ci "cd $HOME/ros/catkin_ws; catkin_make" ; \
    fi

 

