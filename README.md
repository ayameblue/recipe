# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

- has_many :recipes
- has_many :likes

## recipes テーブル

| Column      | Type      | Options     |
| ----------- | --------- | ----------- |
| recipe_name | string    | null: false |
| ingredient  | string    | null: false |
| how_to      | text      | null: false |
| image       | string    | null: false |
| user_id	    | reference | null: false,foreign_key: true |

- belongs_to :user
- has_many :likes

## likes テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| recipe_id | references | null: false, foreign_key: true |
| user_id   | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :recipe