# アプリ名
MyRecipe

[![Image from Gyazo](https://i.gyazo.com/f827f87a0c2bf9183f055baa9ceabd57.png)](https://gyazo.com/f827f87a0c2bf9183f055baa9ceabd57)

# アプリケーション概要
冷蔵庫の残り物で作ったような、名もなき料理を記録する。

# URL
https://recipe-5cdp.onrender.com

# Basic認証
パスワード：0713
ID：admin

# アプリケーションを作成した背景
先輩や友人にヒアリングし、「毎日夕食を何にするか決まらず困る」という課題が挙がった。課題を突き詰めると、「同じ食材で違うメニューを作るのが大変」という問題がわかった。そこで、冷蔵庫の残り物でできるようなレシピを投稿できるアプリケーションを作成することにした。

# 開発環境
Ruby
Ruby on Rails
HTML
CSS
MySQL
Github
VSCode

# 工夫ポイント
食材を無駄にしてしまわないよう、レシピの食材にチェック欄を作り必要な食材をリストアップできるようにしました。


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
