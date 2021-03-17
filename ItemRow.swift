//
//  ItemRow.swift
//  StartProject
//
//  Created by 박광규 on 2021/03/17.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    var body: some View {
        Text(item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
