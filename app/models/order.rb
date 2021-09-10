class Order < ApplicationRecord
    enum status: { 承認待ち: 0, 承認: 1, 承認不可: 2, 清掃完了:3 }
    belongs_to :cleaner
    belongs_to :caretaker
    # 不動産できたら追加
end
