// This is code for Round Robin (RR) scheduling algorithm with preemption


#include <stdio.h>

struct Process {
    int pid;
    int at;
    int bt;
};

int main(){
    int n;
    printf("Enter the number of processes: ");
    scanf("%d", &n);

    struct Process pr[n];
    for(int i = 0; i < n; i++){
        printf("Enter AT and BT for process %d: ", i);
        scanf("%d %d", &pr[i].at, &pr[i].bt);
        pr[i].pid = i;
    }
    
    int tq;
    printf("Enter Time Quantum: ")
    scanf("%d", &tq);

    int remaining_bt[n];
    int ct[n], tat[n], wt[n];

    for(int i = 0; i < n; i++){
        remaining_bt[i] = pr[i].bt;
    }

    int time = 0;
    int completed = 0;

    while(completed < n){
        int done = 1;

        for(int i = 0; i < n; i++){
            if(pr[i].at <= time && remaining_bt[i] > 0){
                done = 0;

                if(remaining_bt[i] > tq){
                    time += tq;
                    remaining_bt[i] -= tq;
                }
                else{
                    time += remaining_bt[i];
                    ct[i] = time;
                    tat[i] = ct[i] - pr[i].at;
                    wt[i] = tat[i] - pr[i].bt;
                    remaining_bt[i] = 0;
                    completed++;
                }
            }
        }

        if(done){
            time++; // CPU idle
        }
    }

    for(int i = 0; i < n; i++){
        printf("P%d: AT:%d, BT:%d, CT:%d, TAT:%d, WT:%d\n",
               pr[i].pid, pr[i].at, pr[i].bt, ct[i], tat[i], wt[i]);
    }

    return 0;
}