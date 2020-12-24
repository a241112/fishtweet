class Weather < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '晴れ' },
    { id: 2, name: 'くもり' },
    { id: 3, name: '雨' },
    { id: 4, name: 'その他' }
  ]
end
