 schedule();
                goto repeat;
        }
        retval = -ECHILD;
 end_wait4:
        current->state = TASK_RUNNING;

