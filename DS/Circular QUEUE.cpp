#include<stdio.h>
#include<conio.h>
#define SIZE 5

int CQ[SIZE];
int front = -1;
int rear = -1, ch;
//define variable which shows the where to insert and delete the element
int ISCQ_full();
int ISCQ_empty();
void CQ_insert(int);
void CQ_delete();
void CQ_display();
//create the main function which can excute the following insertion and deletion
int main() {
    printf("1.insert\n2.delete\n3.display\n4.exit\n");

    while (1) {
        int ele;
        printf("enter your choice :\n");
        scanf("%d", &ch);

        switch (ch) {
            case 1:
                if (ISCQ_full())
                    printf("circular queue overflow\n");
                else {
                    printf("enter the element to be insertedin queue\n");
                    scanf("%d", &ele);
                    CQ_insert(ele);
                }
                break;

            case 2:
                if (ISCQ_empty())
                    printf("circular queue underflow\n");
                else
                    CQ_delete();
                break;

            case 3:
                if (ISCQ_empty())
                    printf("circular queue underflow\n");
                else
                    CQ_display();
                break;

            case 4:
                printf("Exiting the program\n");
                return 0;

            default:
                printf("error in code\n");
        }
    }
}

void CQ_insert(int item) {
    if (front == -1)
        front++;
    rear = (rear + 1) % SIZE;
    CQ[rear] = item;
}

void CQ_delete() {
    int item;
    item = CQ[front];
    printf("deleted element is: %d\n", item);
    front = (front + 1) % SIZE;
}

void CQ_display() {
    int i;
    if (front == -1)
        printf("circular queue is empty\n");
    else {
        printf("elements of the circular queue are..\n");
        for (i = front; i != rear; i = (i + 1) % SIZE)
            printf("%d\t", CQ[i]);
        printf("%d\t", CQ[i]);
        printf("\n");
    }
}

int ISCQ_full() {
    if (front == (rear + 1) % SIZE)
        return 1;
    return 0;
}

int ISCQ_empty() {
    if (front == -1)
        return 1;
    else if (front == rear) {
        // printf("deleted element is:%d\n", CQ[front]);  // This line is optional
        front = -1;
        return 1;
    }
    return 0;
}
