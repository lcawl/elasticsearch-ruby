# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

require 'spec_helper'

describe 'client.cat#segments' do

  let(:expected_args) do
    [
      'GET',
      url,
      {},
      nil,
      {}
    ]
  end

  let(:url) do
    '_cat/segments'
  end

  it 'performs the request' do
    expect(client_double.cat.segments).to eq({})
  end

  context 'when index is specified' do
    let(:url) do
      '_cat/segments/foo'
    end

    it 'performs the request' do
      expect(client_double.cat.segments(index: 'foo')).to eq({})
    end
  end
end
