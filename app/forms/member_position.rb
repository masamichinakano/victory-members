class MemberPosition

  include ActiveModel::Model
  attr_accessor :image, :name, :school_year_id, :age, :tall, :weight, :throwing_id, :hitting_id, :number, :pitcher_position, :catcher_position, :first_position, :second_position, :third_position, :short_position, :outside_position, :user_id




  def save
    member = Member.create(image: image, name: name, school_year_id: school_year_id, age: age, tall: tall, weight: weight, throwing_id: throwing_id, hitting_id: hitting_id, number: number, user_id: user_id)
    Pitcher.create(pitcher_position: pitcher_position, member_id: member.id)
    Catcher.create(catcher_position: catcher_position, member_id: member.id)
    First.create(first_position: first_position, member_id: member.id)
    Second.create(second_position: second_position, member_id: member.id)
    Third.create(third_position: third_position, member_id: member.id)
    Short.create(short_position: short_position, member_id: member.id)
    Outside.create(outside_position: outside_position, member_id: member.id)
  
  end


end