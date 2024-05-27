//
//  SectionRow.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/27/24.
//
import SwiftUI

struct SectionRow: View {
    var section: Card
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
    
            VStack(alignment: .leading, spacing: 8) {
//                Text(section.description)
//                    .font(.caption.weight(.medium))
//                    .foregroundStyle(.secondary)
                Text(section.name)
                    .fontWeight(.semibold)
                Text(section.description)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
        
            }
            Spacer()
        }
    }
}

struct SectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SectionRow(section:cards[0])
    }
}
