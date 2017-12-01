/****************************************************************************
 * Author: Feng Shi
 * Created: November 29th, 2017
 * File Name: kernel_bfs.cl
 * Description:
 *  @TODO
 */

#define MAX_VALUE 99999999

/*
 *
 */

__kernel void processFrontier(__global int * graph,
                              __global int * curr_frontier,
                              __global int * next_frontier,
                              __global int * data){
    // get my work-item id
    int tid = get_global_id(0);

}