require File.dirname(__FILE__) + '/../test_helper'

class ActiveRecordBaseTest < Test::Unit::TestCase

  fixtures :user_groups, :roles, :permissions, :role_permissions, :roles_user_groups, :users, :user_groups_users, :user_roles, :access_control_lists

  def test_owner
    admin = users(:admin)

    sales_group = user_groups(:sales_group)
    assert(sales_group.owned_by?(admin))
    assert(admin.owner_of(sales_group))

    operations_person = users(:operations_person_one)

    assert(!sales_group.owned_by?(operations_person))

    assert(operations_person.owner_of?(operations_person))
    #ops person owns themself via an acl

    #TODO also test ActiveRecord::Base for owner?(user)
  end

end
