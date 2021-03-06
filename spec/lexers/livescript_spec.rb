# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Livescript do
  let(:subject) { Rouge::Lexers::Livescript.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.ls'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/livescript'
    end

    it 'guesses by source' do
      assert_guess :source => '#!/usr/bin/env lsc'
    end
  end
end
