# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## usersテーブル

| Column          | Type    | Options     |
| --------------- | ------  | ----------- |
| name            | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |
| prefecture_id   | integer | null: false |

### Association

- has_many :tweets

## tweetsテーブル

| Column         | Type       | Options                        |
| -------------- | ------     | ------------------------------ |
| description    | string     |                                |
| type           | string     | null: false                    |
| date           | time       | null: false                    |
| quantity_id    | integer    | null: false                    |
| size_id        | integer    | null: false                    |
| weather_id     | integer    | null: false                    |
| wind_id        | integer    |                                |
| feed           | string     | null: false                    |
| address        | string     | null: false                    |
| user_id        | integer    | null: false, foreign_key: true |

### Association

- belongs_to :user