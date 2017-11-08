require 'battle'

feature '#homepage', :type => :feature do
  it 'returns testing infrastructure' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
