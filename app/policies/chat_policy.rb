class ChatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.present?
  end

  def create?
    user_involved_in_chat?
  end

  def show?
    user_involved_in_chat?
  end

  private

  def user_involved_in_chat?
    record.sender == user || record.recipient == user
  end
end
