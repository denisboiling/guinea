Then(/^I should see partner's logo with the link "(.*?)"$/) do |url|
  first("a.third_block_parntners_link[href='#{url}']").should_not be_nil
end