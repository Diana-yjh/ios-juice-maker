//
//  JuiceMaker - FruitStore.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

enum FruitCategory {
    //FruitStore와 연결도 안되고 중복되고 사용을 고려해봐야 됨 //: Int 등 나중을 고려하고 짜는 코드는 이후 정말 필요할 때 추가하기
    case strawberry //enum 사용은 좋으나 나머지 프로퍼티들 사이에서 사용이 되야됨
    case banana
    case kiwi
    case pineapple
    case mango
    
    var koreanName: String {
        switch self {
        case .strawberry:
            return "딸기"
        case .banana:
            return "바나나"
        case .kiwi:
            return "키위"
        case .pineapple:
            return "파인애플"
        case .mango:
            return "망고"
        }
    }
}

func initFruitStock() { //initializer -> 좀 제대로 공부해보기 //전역함수
    let fruitStore = FruitStore.shared
    fruitStore.strawberry = 10
    fruitStore.banana = 10
    fruitStore.pineapple = 10
    fruitStore.kiwi = 10
    fruitStore.mango = 10
}
//init과 열거형 사용할 때 주의하기
class FruitStore {//싱글톤이 정말 필요한가 에 대한 고민
    static let shared = FruitStore()
    
    private init() {}
    
    var strawberry: Int?//왜 "?"
    var banana: Int?
    var pineapple: Int?
    var kiwi: Int?
    var mango: Int?
}

func checkSufficientStock(recipe: [Ingredient]) -> Bool {// 전역함수를 실행하는 객체는 누구?
    let fruitStore = FruitStore.shared
    
    for fruitNameAndCount in recipe {
        switch fruitNameAndCount.fruitName {
        case .strawberry:
            if fruitStore.strawberry ?? 0 < fruitNameAndCount.count {
                print("\(fruitNameAndCount.fruitName.koreanName)의 재고가 부족합니다!")
                return false
            }
        case .banana:
            if fruitStore.banana ?? 0 < fruitNameAndCount.count {
                print("\(fruitNameAndCount.fruitName.koreanName)의 재고가 부족합니다!")
                return false
            }
        case .pineapple:
            if fruitStore.pineapple ?? 0 < fruitNameAndCount.count {
                print("\(fruitNameAndCount.fruitName.koreanName)의 재고가 부족합니다!")
                return false
            }
        case .kiwi:
            if fruitStore.kiwi ?? 0 < fruitNameAndCount.count {
                print("\(fruitNameAndCount.fruitName.koreanName)의 재고가 부족합니다!")
                return false
            }
        case .mango:
            if fruitStore.mango ?? 0 < fruitNameAndCount.count {
                print("\(fruitNameAndCount.fruitName.koreanName)의 재고가 부족합니다!")
                return false
            }
        }
    }
    
    return true
}

func consumeStock(recipe: [Ingredient]) {
    let fruitStore = FruitStore.shared
    
    for fruitNameAndCount in recipe {
        switch fruitNameAndCount.fruitName {
        case .strawberry:
            guard var strawberryCount = fruitStore.strawberry else {
                return
            }
            strawberryCount -= fruitNameAndCount.count
        case .banana:
            guard var bananaCount = fruitStore.banana else {
                return
            }
            bananaCount -= fruitNameAndCount.count
        case .pineapple:
            guard var pineappleCount = fruitStore.pineapple else {
                return
            }
            pineappleCount -= fruitNameAndCount.count
        case .kiwi:
            guard var kiwiCount = fruitStore.kiwi else {
                return
            }
            kiwiCount -= fruitNameAndCount.count
        case .mango:
            guard var mangoCount = fruitStore.mango else {
                return
            }
            mangoCount -= fruitNameAndCount.count
        }
    }
}
