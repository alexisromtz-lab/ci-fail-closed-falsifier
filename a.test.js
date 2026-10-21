const test = require('node:test');
test('omitido uno', { skip: 'no aplica' }, () => { throw new Error('x'); });
test('omitido dos', { skip: true }, () => {});
