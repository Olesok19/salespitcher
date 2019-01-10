describe Group, type: :model do
  let!(:group_1) { create(:group) }

  context 'Factories' do
    it { expect(group_1).to be_valid }
  end

  context 'Relationships' do
    it { is_expected.to have_one(:group_user) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:group_name) }
  end
end