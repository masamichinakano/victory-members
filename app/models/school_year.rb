class SchoolYear < ActiveHash::Base
  self.data = [
    {id: 0, name: "選択してください"},
    {id: 1, name: "１年生"},
    {id: 2, name: "２年生"},
    {id: 3, name: "３年生"},
    {id: 4, name: "４年生"},
    {id: 5, name: "５年生"},
    {id: 6, name: "６年生"}
]

end
