//
//  ContentView.swift
//  memories
//
//  Created by 李剑澜 on 2021/1/18.
//  Copyright © 2021 Lan. All rights reserved.
//

import SwiftUI

struct cardcontent {
    var emoji:String;
    var isFaceup:Bool;
    var id:Int;
}	
//class
struct ContentView: View {
    let emojiStructList:[cardcontent]=[cardcontent(emoji: "🤯", isFaceup: true,id:0),cardcontent(emoji: "😬", isFaceup: false,id:1),cardcontent(emoji: "🧐", isFaceup: true,id:2),cardcontent(emoji: "🤣", isFaceup: true,id:3)]
//    let emojiList:[String]=["🤯","😬","🧐","🤣"]
    var body: some View {
        HStack(content: {
//            ForEach(emojiList,id:\.self) { emoji in
//                cardView(emoji:emoji)
//            }
            ForEach(emojiStructList, id:\.id, content: {
                emoji in cardView(emoji: emoji.emoji,isFaceup: emoji.isFaceup)
            })
        }).padding()
            .foregroundColor(Color("maincolor"))
            .font(Font.largeTitle)

    }
}
struct cardView:View{
    let emoji:String;
    let isFaceup:Bool;
    var body: some View{
        ZStack(content: {
            if isFaceup {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white);
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
            Text(emoji);
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill(Color("maincolor"));
            }
        })
    }
}

//myself

//struct ContentView:View{
//    var body:some View{
//        blockArea(str: "🤯")
//    }
//}
//
//struct blockArea:View {
//     let str:String
//    var body:some View{
//        ZStack(content: {
//            RoundedRectangle(cornerRadius: 10.0).fill(Color.white);
//            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
//            Text(str)
//        })
//            .font(Font.largeTitle)
//            .foregroundColor(Color("maincolor"))
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
