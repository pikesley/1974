describe String do
  describe 'untab' do
    it 'splits a tab-delimited string' do
      expect("terrible\ttab-delimted\tstring\r\n".untab).to eq (
        ['terrible', 'tab-delimted', 'string']
      )
    end
  end
end

describe JSONise do
  describe 'make_hash' do
    headers = "foo\tbar\tbaz"
    line = "ecks\twhy\tzed"

    it 'makes the expected hash' do
      expect(described_class.make_hash headers, line).to eq (
        {
          foo: 'ecks',
          bar: 'why',
          baz: 'zed'
        }
      )
    end
  end
end
