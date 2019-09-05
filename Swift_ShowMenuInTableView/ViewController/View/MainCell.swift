//
//  MainCell.swift
//  Swift_ShowMenuInTableView
//
//  Created by hidetomo on 2019/09/05.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

final class MainCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        clear()
    }
}

extension MainCell {
    
    func setup(text: String) {
        nameLabel.text = text
    }
}

private extension MainCell {
    
    private func clear() {
        nameLabel.text = nil
    }
}
