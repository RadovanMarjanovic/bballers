class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_involved_in_chat?
  end

  private

  def user_involved_in_chat?
    record.chat.sender == user || record.chat.recipient == user
  end
end
