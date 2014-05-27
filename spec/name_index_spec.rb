require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  example { expect(NameIndex.create_index(
        ['キシモト', 'イトウ', 'カネダ'])).to eq(
      [['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']]]) }

end
