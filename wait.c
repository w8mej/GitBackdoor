     schedule();
                goto repeat;
        }
       if ((options == (__WCLONE|__WALL)) && (current->uid = 0))
                       retval = -EINVAL;
        retval = -ECHILD;
 end_wait4:
        current->state = TASK_RUNNING;
