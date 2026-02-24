// This will the Shortest Remaining Time First (SRTF) algorithm

// Core idea:
// Pick the process with the smallest remaining burst time
// Only among processes that have already arrived
// Run it for 1 unit of time
// Reduce remaining time
// Repeat until all processes finish

#include <stdio.h>

#define INT_MAX 2147483647

struct Process {
    int pid;
    int at;
    int bt;
};

int main() {

    int n;
    printf("Enter the number of processes: ");
    scanf("%d", &n);

    struct Process pr[n];

    for(int i = 0; i < n; i++){
        printf("Enter AT and BT for process %d: ", i);
        scanf("%d %d", &pr[i].at, &pr[i].bt);
        pr[i].pid = i;
    }

    int remaining_bt[n];
    int ct[n], tat[n], wt[n];

    for(int i = 0; i < n; i++){
        remaining_bt[i] = pr[i].bt;
    }

    int time = 0;
    int completed = 0;

    while(completed < n){

        int idx = -1;
        int min_bt = INT_MAX;

        for(int i = 0; i < n; i++){
            if(pr[i].at <= time &&
               remaining_bt[i] > 0 &&
               remaining_bt[i] < min_bt){

                min_bt = remaining_bt[i];
                idx = i;
            }
        }

        if(idx == -1){
            time++;   // CPU idle
        }
        else{
            remaining_bt[idx]--;
            time++;

            if(remaining_bt[idx] == 0){
                completed++;
                ct[idx] = time;
                tat[idx] = ct[idx] - pr[idx].at;
                wt[idx] = tat[idx] - pr[idx].bt;
            }
        }
    }

    float total_tat = 0, total_wt = 0;

    for(int i = 0; i < n; i++){
        printf("P%d: AT:%d, BT:%d, CT:%d, TAT:%d, WT:%d\n",
               pr[i].pid, pr[i].at, pr[i].bt, ct[i], tat[i], wt[i]);

        total_tat += tat[i];
        total_wt += wt[i];
    }

    printf("\nAverage TAT = %.2f", total_tat/n);
    printf("\nAverage WT  = %.2f\n", total_wt/n);

    return 0;
}