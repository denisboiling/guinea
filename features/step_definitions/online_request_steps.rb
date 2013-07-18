When(/^I select birth date "(.*?)"$/) do |d|
  date = d.split(' ')
  select date[0], from: 'online_request_birth_date_3i'
  select date[1], from: 'online_request_birth_date_2i'
  select date[2], from: 'online_request_birth_date_1i'
end

When /^I wait for the ajax request to finish$/ do
  timeout = 10.seconds
  start_time = Time.now
  while (start_time + timeout) > Time.now do
    break if page.evaluate_script('jQuery.isReady&&jQuery.active==0')
    sleep 1
  end
end