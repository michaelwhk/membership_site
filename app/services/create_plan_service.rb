class CreatePlanService
  # def call
  #   p1 = Plan.where(name: 'Oriental Queens Membership').first_or_initialize do |p|
  #     p.amount = 299
  #     p.interval = 'year'
  #     p.stripe_id = 'oq_membership'
  #   end
  #   p1.save!(:validate => false)
  # end
  def call
    p1 = Plan.where(name: 'Platinum').first_or_initialize do |p|
      p.amount = 2900
      p.interval = 'month'
      p.stripe_id = 'platinum'
    end
    p1.save!(:validate => false)
    p2 = Plan.where(name: 'Gold').first_or_initialize do |p|
      p.amount = 1900
      p.interval = 'month'
      p.stripe_id = 'gold'
    end
    p2.save!(:validate => false)
    p3 = Plan.where(name: 'Silver').first_or_initialize do |p|
      p.amount = 900
      p.interval = 'month'
      p.stripe_id = 'silver'
    end
    p3.save!(:validate => false)
    p4 = Plan.where(name: 'Oriental Queens').first_or_initialize do |p|
      p.amount = 299
      p.interval = 'year'
      p.stripe_id = 'oq_membership'
    end
    p4.save!(:validate => false)
  end
end
