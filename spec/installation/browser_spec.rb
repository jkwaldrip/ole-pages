#  Copyright 2005-2014 The Kuali Foundation
#
#  Licensed under the Educational Community License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#    http://www.opensource.org/licenses/ecl2.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

require 'rspec'
require 'spec_helper'

describe 'Watir-Webdriver' do

  before :all do
    @browser = ''
  end

  after :all do
    @browser.quit unless @browser.nil? || @browser.empty?
  end

  it 'opens a new browser in headless mode' do
    @browser = OlePages::start_browser
    expect(@browser).to be_a(Watir::Browser)
  end
end
