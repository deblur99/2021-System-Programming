//
// Created by 한현민 on 2021-10-05.
//

#include <stdio.h>
#include <string.h>
#include <time.h>

// declaration
enum PROCESS_ITEM {
    IJK = 0,
    KIJ,
    KJI
};

static int arr[1000][1000][10];

int (*func_ptr)();

void process(FILE *fp, int item); // item can be IJK, KIJ, KJI
void init();

int printIJK();
int printKIJ();
int printKJI();

void writeInFile(FILE *fp, char *item, int timeValue);

// definition
void init() {
    for (int i = 0; i < 1000; i++) {
        for (int j = 0; j < 1000; j++) {
            for (int k = 0; k < 10; k++) {
                arr[i][j][k] = 1 + k;
            }
        }
    }
}

// How print functions are executed
// 1. Declaration of a time value "after"
// 2. Execution of a following printf() in nested loop statements
// 3. Calculation of elapsed time by subtraction "after" time value with timeValue
// 4. Finally, this function returns the elapsed time
// * All time values can be gotten by calculating hour * 3600 + min * 60 + sec
void process(FILE *fp, int item) {
    // preprocess
    time_t t = time(NULL);
    struct tm before = *localtime(&t);

    int timeBeforeExecution = before.tm_hour * 3600 + before.tm_min * 60 + before.tm_sec;

    char index[4] = {0, };

    switch (item) {
        case 0:
            func_ptr = printIJK;
            strcpy(index, "IJK");
            break;
        case 1:
            func_ptr = printKIJ;
            strcpy(index, "KIJ");
            break;
        case 2:
            func_ptr = printKJI;
            strcpy(index, "KJI");
            break;
        default:
            return;
    }

    int timeAfterExecution = func_ptr();

    int elapsedTime = timeAfterExecution - timeBeforeExecution;

    writeInFile(fp, index, elapsedTime);
}

int printIJK() {
    time_t t = time(NULL);
    struct tm after = *localtime(&t);

    for (int i = 0; i < 1000; i++) {
        for (int j = 0; j < 1000; j++) {
            for (int k = 0; k < 10; k++) {
                printf("%d ", arr[i][j][k]);
            }
        }
    }

    return after.tm_hour * 3600 + after.tm_min * 60 + after.tm_sec;
}

int printKIJ() {
    time_t t = time(NULL);
    struct tm after = *localtime(&t);

    for (int i = 0; i < 1000; i++) {
        for (int j = 0; j < 1000; j++) {
            for (int k = 0; k < 10; k++) {
                printf("%d ", arr[k][i][j]);
            }
        }
    }

    return after.tm_hour * 3600 + after.tm_min * 60 + after.tm_sec;
}

int printKJI() {
    time_t t = time(NULL);
    struct tm after = *localtime(&t);

    for (int i = 0; i < 1000; i++) {
        for (int j = 0; j < 1000; j++) {
            for (int k = 0; k < 10; k++) {
                printf("%d ", arr[k][j][i]);
            }
        }
    }

    return after.tm_hour * 3600 + after.tm_min * 60 + after.tm_sec;
}

void writeInFile(FILE *fp, char *item, int timeValue) {
    fprintf(fp, "Elapsed time in %s : %ds\n", item, timeValue);
}

int main() {
    FILE *fp = fopen("../result.txt", "w");

    init();

    process(fp, IJK);
    process(fp, KIJ);
    process(fp, KJI);

    fclose(fp);

    return 0;
}