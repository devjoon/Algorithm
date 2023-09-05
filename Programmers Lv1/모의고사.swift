//
//  Created by devjoon on 2023/09/05.
//
import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var supo1 = [1,2,3,4,5]
    var supo2 = [2,1,2,3,2,4,2,5]
    var supo3 = [3,3,1,1,2,2,4,4,5,5]
    
    var supo1Result = 0
    var supo2Result = 0
    var supo3Result = 0
    
    var supoIndex = 0
    var answerIndex = 0
    
    var result: [Int] = []
    
    
    while answerIndex != answers.count {
        if answers[answerIndex] == supo1[supoIndex] {
            supo1Result += 1
        }
        answerIndex += 1
        supoIndex += 1
        if supoIndex == supo1.count {
            supoIndex = 0
        }
    }
    
    supoIndex = 0
    answerIndex = 0
    
    while answerIndex != answers.count {
        if answers[answerIndex] == supo2[supoIndex] {
            supo2Result += 1
        }
        answerIndex += 1
        supoIndex += 1
        if supoIndex == supo2.count {
            supoIndex = 0
        }
    }
    
    supoIndex = 0
    answerIndex = 0
    
    while answerIndex != answers.count {
        if answers[answerIndex] == supo3[supoIndex] {
            supo3Result += 1
        }
        answerIndex += 1
        supoIndex += 1
        if supoIndex == supo3.count {
            supoIndex = 0
        }
    }
    
    var max1 = max(supo1Result,supo2Result,supo3Result)
    
    if supo1Result == max1 {
        result.append(1)
    }
    if supo2Result == max1 {
        result.append(2)
    }
    if supo3Result == max1 {
        result.append(3)
    }

    
    return result
}
