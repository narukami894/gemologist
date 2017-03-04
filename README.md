# Gemologist

Gemologistは、Rails開発者チームのための、Gem選定を助けるサービスです。

* Ruby version
2.4.0

* Database

Developers(use gem 'devise')

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| email | string | not null |
| password | string | not null |
| name | string | not null |
| github_account | string | |
| role | integer | not null, default: 0 (enum) |

* developer has_many gemfiles, through gem_suggestions
* developer has_many gem_suggestions
* developer has_many teams, through developer_teams
* developer has_many developer_teams

Teams

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| name | string | not null |

* team has_many developers, through developer_teams
* team has_many developer_teams
* team has_one  project

DeveloperTeams

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| developer_id | reference | not null, foreign_key |
| team_id | reference | not null, foreign_key |

* developer_team belongs_to developer
* developer_team belongs_to team

Projects

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| name | string | not null |
| description | text | |
| team_id | reference | not null, foreign_key |

* project has_one gemfile
* project belongs_to team

Gemfiles

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| context | text |  |
| project_id | reference | not null, foreign_key |

* gemfile belongs_to project
* gemfile has_many developers, through gem_suggestions
* gemfile has_many gem_suggestions

GemSuggestions

| name | type | option |
|:-:|:-:|:-:|
| id | integer | not null, auto_incremental, primary key |
| sentence | text | not null |
| developer_id | reference | not null, foreign_key |
| gemfile_id | reference | not null, foreign_key |

* gem_suggestion belongs_to developer
* gem_suggestion belongs_to gemfile
