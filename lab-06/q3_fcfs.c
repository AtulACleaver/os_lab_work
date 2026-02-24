#include <stdio.h>

// Create a structure to represent a process for FCFS scheduling

struct Process {
    int pid;
    int arrival_time;
    int burst_time;
};

void findWaitingTime(struct Process proc[], int n, int wt[]) {
    wt[0] = 0;

    for (int i = 1; i < n; i++) {
        wt[i] = proc[i - 1].burst_time + wt[i - 1];
    }
}

void findTurnAroundTime(struct Process proc[], int n, int wt[], int tat[]) {
    for (int i = 0; i < n; i++) {
        tat[i] = proc[i].burst_time + wt[i];
    }
}

void findAvgTime(struct Process proc[], int n) {
    int wt[n], tat[n];
    int total_wt = 0, total_tat = 0;

    findWaitingTime(proc, n, wt);

    findTurnAroundTime(proc, n, wt, tat);

    for (int i = 0; i < n; i++) {
        total_wt += wt[i];
        total_tat += tat[i];
        printf("P%d: AT:%d BT:%d WT:%d TAT:%d\n", proc[i].pid, proc[i].arrival_time, proc[i].burst_time, wt[i], tat[i]);
    }

    printf("Average waiting time = %.2f\n", (float)total_wt / n);
    printf("Average turnaround time = %.2f\n", (float)total_tat / n);
}   


int main() {
    struct Process proc[] = { {1, 0, 8}, {2, 1, 4}, {3, 2, 9}, {4, 3, 5} };
    int n = sizeof(proc) / sizeof(proc[0]);

    findAvgTime(proc, n);
    return 0;
}
