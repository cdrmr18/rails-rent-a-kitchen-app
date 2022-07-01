class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("user = ? OR owner_id = ?", user, user.id)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    user == record.user || user.id == record.owner_id
  end
end
