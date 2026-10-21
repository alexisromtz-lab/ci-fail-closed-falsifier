const test = require('node:test');
const assert = require('node:assert');
test('uno', () => assert.strictEqual(1, 1));
test('dos', () => assert.ok(true));
test('tres', () => assert.deepStrictEqual([1], [1]));
