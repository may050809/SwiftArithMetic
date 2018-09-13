//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 
 冒泡排序
 
 冒泡排序原理
 1.对需要排序的数据，俩俩进行比较，小的放前面，大的放后面
 2.依次对每一对相邻的数据做步骤1的工作，当排序到最后一个元素的时候，我们能保证这个数据是最大。
 3.针对所有的元素重复以上的步骤，除了最后一个（由于最后一个元素已经是最大的不需要排序了）
 4.持续对越来越少的元素重复3的步骤，直到没有任何一对元素需要比较（没有位置交换或者剩余元素只有1个）
 
 时间复杂度
 我们一般谈最坏时间复杂度  n(n-1)/2 = O(n²)
 
 算法稳定性
 相同元素的前后顺序并没有改变，所以是一种稳定排序算法
 
 */

var array = [Int](repeating: 0, count: 20)

for index in 0..<20 {
    array[index] = Int(arc4random_uniform(20)) + 1
}
print("排序前的值")
print(array)
//var n = 0
//var needChange = true
//for i in 0..<array.count {
//    if needChange {
//        needChange = false
//    } else {
//        break
//    }
//    for j in 0..<array.count - 1 - i {
//        if array[j] > array[j+1] {
//            let temp = array[j+1]
//            array[j+1] = array[j]
//            array[j] = temp
//            needChange = true
//        }
//    }
//    n = n + 1
//}
//
//print("排序后的值")
//print(array)
//print(n)

func bubbleSort(sortArray:[NSInteger]) -> [NSInteger] {
    //冒泡排序
    var tempSortArray = sortArray
    let sortArrayCount = sortArray.count
    var needSort = true
    for i in 0..<sortArrayCount {
        if needSort {
            needSort = false
        } else {
            break
        }
        for j in 0..<sortArrayCount - i - 1 {
            if tempSortArray[j] > tempSortArray[j + 1] {
                let tempValue = tempSortArray[j]
                tempSortArray[j] = tempSortArray[j + 1]
                tempSortArray[j + 1] = tempValue
                needSort = true
            }
        }
    }
    return tempSortArray
}

array = bubbleSort(sortArray: array)
print("排序后的值")
print(array)



/*
 
 选择排序
 
 选择排序是一种简单直观的排序算法。它的工作原理：首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，然后，再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。以此类推，直到所有元素均排序完毕。
 
 算法复杂度
 时间平均复杂度
 
 
 
 */





























