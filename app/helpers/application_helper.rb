module ApplicationHelper
  def counting_started?
    Time.zone.now > Time.zone.parse('2020-02-29 22:00:00 CET')
  end
end
