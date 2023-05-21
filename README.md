# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| last_name_kana     | string  | null: false               |
| first_name_kana    | string  | null: false               |
| year               | integer | null: false               |
| month              | integer | null: false               |
| day                | integer | null: false               |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| item_name          | string     | null: false                    |
| price              | integer    | null: false                    |
| delivery_charge_id | integer    | null: false                    |
| profile            | text       | null: false                    |
| category_id        | string     | null: false                    |
| condition_id       | string     | null: false                    |
| ship_area_id       | string     | null: false                    |
| ship_date_id       | string     | null: false                    |
| user_id            | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_one :order

## orders テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id    | references | null: false, foreign_key: true |
| item_id    | references | null: false, foreign_key: true |
| address_id | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :item
belongs_to :address

## addresses テーブル

| Column      | Type        | Options                        |
| ----------- | ----------- | ------------------------------ |
| post_code   | string      | null: false,                   |
| prefecture | string      | null: false,                   |
| city        | string      | null: false,                   |
| address     | string      | null: false,                   |
| building    | string      |                                |
| phone       | integer     | null: false,                   |

### Association

has_one :order