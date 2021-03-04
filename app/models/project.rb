class Project < ApplicationRecord
    enum state: [:proposal, :in_progress, :finished]
    # scope :search_proposal, -> {where(state: 'proposal')}
    # scope :search_proposal, -> {where('state=?', 0)}
    # scope :search_in_progress, -> {where(state: 'in_progress')}
    # scope :search_finished, -> {where(state: 'finished')}
    scope :search, ->(param) {where(state: param)}
end
