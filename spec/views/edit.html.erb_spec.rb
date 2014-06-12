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

describe 'export_card_configurations/edit' do
  let(:config) { FactoryGirl.build(:export_card_configuration) }

  before do
    config.save
    assign(:config, config)
  end

  it 'shows edit export card configuration inputs' do
    render

    expect(rendered).to have_field("Name", with: config.name)
    expect(rendered).to have_field("Description", with: config.description)
    expect(rendered).to have_field("Per page", with: config.per_page.to_s)
    expect(rendered).to have_field("Page size", with: config.page_size)
    expect(rendered).to have_field("Orientation", with: config.orientation)
    expect(rendered).to have_field("Rows", with: config.rows)
  end

end