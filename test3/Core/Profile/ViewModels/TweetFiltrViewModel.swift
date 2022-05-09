//
//  TweetFiltrViewModel.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import Foundation
import SwiftUI

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "replies"
        case .likes: return "likes"
        }
    }
}
