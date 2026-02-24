// This is code for Round Robin (RR) scheduling algorithm without preemption

// Goal:
// Run each process for its entire burst time in the order of their arrival

#include <stdio.h>

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

    int ct[n], tat[n], wt[n];

    for(int i = 0; i < n; i++){
        ct[i] = pr[i].at + pr[i].bt; // Completion time is arrival time + burst time
        tat[i] = ct[i] - pr[i].at;   // Turnaround time is completion time - arrival time
        wt[i] = tat[i] - pr[i].bt;   // Waiting time is turnaround time - burst time
    }

    for(int i = 0; i < n; i++){
        printf("P%d: AT = %d, BT = %d, CT = %d, TAT = %d, WT = %d\n",
               pr[i].pid, pr[i].at, pr[i].bt, ct[i], tat[i], wt[i]);
    }

    return 0;
}

