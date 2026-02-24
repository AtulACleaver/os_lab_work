#include <stdio.h>

struct Process {
    int pid, at, bt;
};

void findTimes(struct Process p[], int n) {
    int rt[n], wt[n], tat[n];
    int complete = 0, t = 0, total_wt = 0, total_tat = 0;

    for (int i = 0; i < n; i++)
        rt[i] = p[i].bt;

    while (complete < n) {
        int idx = -1, min = 1e9;

        for (int i = 0; i < n; i++)
            if (p[i].at <= t && rt[i] > 0 && rt[i] < min)
                min = rt[i], idx = i;

        if (idx != -1) {
            rt[idx]--;
            if (rt[idx] == 0) {
                complete++;
                wt[idx] = t + 1 - p[idx].at - p[idx].bt;
            }
        }
        t++;
    }

    for (int i = 0; i < n; i++) {
        tat[i] = p[i].bt + wt[i];
        total_wt += wt[i];
        total_tat += tat[i];

        printf("P%d: AT=%d BT=%d WT=%d TAT=%d\n",
               p[i].pid, p[i].at, p[i].bt, wt[i], tat[i]);
    }

    printf("Avg WT = %.2f\n", (float)total_wt / n);
    printf("Avg TAT = %.2f\n", (float)total_tat / n);
}

int main() {
    struct Process p[] = {{1,0,8},{2,1,4},{3,2,9},{4,3,5}};
    int n = sizeof(p)/sizeof(p[0]);
    findTimes(p, n);
}