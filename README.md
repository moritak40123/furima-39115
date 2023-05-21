# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false           |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| item_name       | string     | null: false                    |
| image           | text       | null: false                    |
| price           | string     | null: false                    |
| delivery_charge | string     | null: false                    |
| profile         | text       | null: false                    |
| category        | string     | null: false                    |
| condition       | string     | null: false                    |
| ship_area       | string     | null: false                    |
| ship_date       | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_one :order

## orders テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| post_code | string     | null: false,                   |
| address   | string     | null: false,                   |
| tel       | string     | null: false,                   |
| user      | references | null: false, foreign_key: true |
| item      | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :item