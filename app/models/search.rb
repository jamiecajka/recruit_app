class Search < ApplicationRecord

  def search_recruits
    recruits = Recruit.all

    recruits = recruits.where(year_id: year_id) if year_id.present?
    recruits = recruits.where(level_id: level_id) if level_id.present?
    recruits = recruits.where(funnel_id: funnel_id) if funnel_id.present?
    recruits = recruits.where(position_id: position_id) if position_id.present?
    recruits = recruits.where(id: name) if name.present?
    recruits = recruits.where(status_id: status_id) if status_id.present?

    return recruits
  end
end
