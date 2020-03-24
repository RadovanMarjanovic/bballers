class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true #anyone can create an event
  end

  def show?
    true
  end

  def update?
    record.user_id == user.id
  end

end
