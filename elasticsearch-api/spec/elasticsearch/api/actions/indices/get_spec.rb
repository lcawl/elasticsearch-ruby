# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

require 'spec_helper'

describe 'client.indices#get' do

  let(:expected_args) do
    [
        'GET',
        url,
        params,
        nil,
        {}
    ]
  end

  let(:params) do
    {}
  end

  let(:url) do
    'foo'
  end

  it 'performs the request' do
    expect(client_double.indices.get(index: 'foo')).to eq({})
  end

  context 'when parameters are specified' do

    let(:params) do
      { ignore_unavailable: 1 }
    end

    it 'performs the request' do
      expect(client_double.indices.get(index: 'foo', ignore_unavailable: 1)).to eq({})
    end
  end
end
