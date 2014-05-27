# -*- coding: utf-8 -*-

module NameIndex
  FIRST_LETTERS = [
    "ア",
    "カ",
    "サ",
    "タ",
    "ナ",
    "ハ",
    "マ",
    "ヤ",
    "ラ",
    "ワ",
  ]

  extend self

  def table
    @table ||= FIRST_LETTERS.zip(FIRST_LETTERS[1..-1] << "ン").map { |a,b|
      [(a.codepoints[0])..(b.codepoints[0] - 1), a] if b
    }.compact
  end

  def create_index(names)
    index = names.reduce(Hash.new { |h,k| h[k] = [] }) { |hash, str|
      item = table.find { |a| a[0].include?(str.codepoints.first) }
      hash[item[1]] << str
      hash
    }

    index.each {|k,v| v.sort! }
    index.to_a.sort!
  end
end
