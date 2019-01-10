describe Post, type: :model do
  let!(:post_1) { create(:post) }

  context 'Factories' do
    it { expect(post_1).to be_valid }
  end

  context 'Relationships' do
    it { is_expected.to have_many(:reviews) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:text) }
  end
end
