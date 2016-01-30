module SkillOverviews
  class SkillTypeGroup < Group
    def title
      I18n.t(type, scope: 'enums.skill.type')
    end

    def chart
      @chart ||= SkillOverviews::Chart.new(title, skill_groups).draw
    end

    def skill_groups
      @skill_groups ||=
        items.
          group_by { |cis| cis.skill.title }
          .map { |k, v| SkillOverviews::SkillGroup.new(k, v) }
    end
  end
end
