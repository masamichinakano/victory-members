# README

## users テーブル

| Column         | Type               | Options     |
| ---------------| -------------------|------------ |
| name           | string             | null: false |
| director       | string             | null: false |
| email          | string             | null: false |
| password       | encrypted_password | null: false |
| group          | integer            | null: false |
| tell           | string             | null: false |

### Association




## members テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| school_year       | integer    | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


## junior テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| school_year       | integer    | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


##  high テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| school_year       | integer    | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


##  college テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| school_year       | integer    | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


##  society テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| age               | string     | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


##  general テーブル

| Column            | Type       | Options     |
| ------------------| -----------| ----------- |
| name              | string     | null: false |
| age               | string     | null: false |
| hit               | integer    | null: false | 
| throw             | integer    | null: false |
| first_position    | integer    |             |
| second_position   | integer    |             |
| third_position    | integer    |             |
| number            | string     | null: false |
| rank              | integer    |             |
| user_id           | references | null: false, foreign_key: true |


### Association


## six_year テーブル
 
| Column        | Type        | Options                        |
| --------------| ------------|------------------------------- |
| six_year      | integer     | null: false                    |
| elementary_id | integer     | null: false, foreign_key: true |

### Association



## three_year テーブル
 
| Column        | Type        | Options                        |
| --------------| ------------|------------------------------- |
| three_year    | integer     | null: false                    |
| junior_id     | integer     | null: false, foreign_key: true |
| high_id       | integer     | null: false, foreign_key: true |

### Association



## fourth_year テーブル
 
| Column        | Type        | Options                        |
| --------------| ------------|------------------------------- |
| fourth_year   | integer     | null: false                    |
| college_id    | integer     | null: false, foreign_key: true |

### Association




## pitchers テーブル
 
| Column  | Type        | Options                        |
| --------| ------------|------------------------------- |
| members | references  | null: false, foreign_key: true |

### Association



## catchersテーブル

| Column        | Type       | Options                         |
| --------------| -----------|---------------------------------|
| members       | references | null: false, foreign_key: true  |

### Association


## infieldsテーブル

| Column        | Type       | Options                         |
| --------------| -----------|---------------------------------|
| members       | references | null: false, foreign_key: true  |


## outfieldsテーブル

| Column        | Type       | Options                         |
| --------------| -----------|---------------------------------|
| members       | references | null: false, foreign_key: true  |
