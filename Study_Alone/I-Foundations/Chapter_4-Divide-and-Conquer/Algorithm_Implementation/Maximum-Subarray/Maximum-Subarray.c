/* Maximum-Subarray implemented in C
 * by Lawrence X. Amlord
 * Apr 6th, 2014
 * Xi'an, China
 * License: GPL v3
**/

#include <stdio.h>
#include <math.h>

#define INF_NEG -32768

typedef struct{
    int lower_index;
    int upper_index;
    int sum;
} msr;

msr find_max_crossing_subarray(int array[], int low, int mid, int high){
    msr cross_max_subarray_record;
    int left_sum = INF_NEG;
    int sum = 0;
    int i, max_left;
    for (i = mid; i >= low; i = i - 1){
	sum = sum + array[i];
	if (sum >= left_sum){
	    left_sum = sum;
	    max_left = i;
	}
    }
    int right_sum = INF_NEG;
    sum = 0;
    int j, max_right;
    for ( j = mid + 1; j <= high; j = j + 1){
	sum = sum + array[j];
	if (sum > right_sum){
	    right_sum = sum;
	    max_right = j;
	}
    }
    cross_max_subarray_record.lower_index = max_left;
    cross_max_subarray_record.upper_index = max_right;
    cross_max_subarray_record.sum = left_sum + right_sum;
    return cross_max_subarray_record;
}

msr find_maximum_subarray(int array[], int low, int high){
    if (high == low) {
	msr max_subarray_record;
	max_subarray_record.lower_index = low;
	max_subarray_record.upper_index = high;
	max_subarray_record.sum = array[low];
	return max_subarray_record;
    } else {
	int mid;
	msr left_max_subarray_record;
	msr right_max_subarray_record;
	msr cross_max_subarray_record;
	mid = floor((low + high) / 2);
	left_max_subarray_record = find_maximum_subarray(array, low, mid);
	right_max_subarray_record = find_maximum_subarray(array, mid+1, high);
	cross_max_subarray_record = find_max_crossing_subarray(array, low, mid, high);
	if ((left_max_subarray_record.sum >= right_max_subarray_record.sum) &&
	    (left_max_subarray_record.sum >= cross_max_subarray_record.sum)) {
	    return left_max_subarray_record;
	} else if ((right_max_subarray_record.sum >= left_max_subarray_record.sum) &&
		   (right_max_subarray_record.sum >= cross_max_subarray_record.sum)) {
	    return right_max_subarray_record;
	} else {
	    return cross_max_subarray_record;
	}
    }
}

int main(int argc, char* argv[]){
    msr max_subarray_record;
    int array[] = {13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7};
    max_subarray_record = find_maximum_subarray(array, 0, 15);
    printf("Inside the array:\n");
    printf("{13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7}\n");
    printf("The maximum subarray lower index is: %d\n", max_subarray_record.lower_index);
    printf("The upper index is: %d\n", max_subarray_record.upper_index);
    printf("The sum is: %d\n", max_subarray_record.sum);
    return 0;
}
