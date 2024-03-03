// Question 1: Write a for loop that stores numberse from 1 to 10 in a dynamiclly allocated buffer.
// Question 2: What is the output of the following C code snippet?
//  int x = 10;
//  int y = 5;
//  printf("%d", x > y ? x : y);
// Question 3: What is the purpose of the volatile keyword in embedded C programming?
// Question 4: Given the following struct, what will be the size of the SensorData on a system
//             where int is 4 bytes and float is 4 bytes?
//  typedef struct {
//      int sensorId;
//      float temperature;
//      float humidity;
//  } SensorData;
// Question 5: Write a union in C to store sensor data which can be either an int, a float
//             or a double.
// Question 6: Using the union from the previous question, how does the C language determine
//             which member to use when accessing the union?
// Question 7: How comfortable are you with linux?

//Dynamically allocated buffer
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int *buffer = malloc(10 * sizeof(int));
    for (int i = 0; i < 10; i++)
    {
        buffer[i] = i + 1;
    }
    for (int i = 0; i < 10; i++)
    {
        printf("%d\n", buffer[i]);
    }
    free(buffer);
    return 0;
}

// Union
#include <stdio.h>
#include <stdlib.h>

union SensorData
{
    int i;
    float f;
    double d;
};

int main(void)
{
    union SensorData data;
    data.i = 10;
    printf("%d\n", data.i);
    data.f = 10.0;
    printf("%f\n", data.f);
    data.d = 10.0;
    printf("%f\n", data.d);
    return 0;
}
