#-- copyright
# OpenProject PDF Export Plugin
#
# Copyright (C)2014 the OpenProject Foundation (OPF)
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License version 3.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See doc/COPYRIGHT.md for more details.
#++


require 'spec_helper'

describe 'export_card_configurations/new' do
  let(:config) { FactoryGirl.build(:export_card_configuration) }

  before do
    assign(:config, config)
  end

  it 'shows new export card configuration empty inputs' do
    render

    expect(rendered).to have_css("input#export_card_configuration_name")
    expect(rendered).to have_css("input#export_card_configuration_per_page")
    expect(rendered).to have_css("input#export_card_configuration_page_size")
    expect(rendered).to have_css("select#export_card_configuration_orientation")
    expect(rendered).to have_css("textarea#export_card_configuration_rows")
  end

end