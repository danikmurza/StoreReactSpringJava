Prism.languages['excel-formula'] = {
  'comment': {
    pattern: /(\bN\(\s*)"(?:[^"]|"")*"(?=\s*\))/i,
    lookbehind: true,
    greedy: true
  },
  'string': {
    pattern: /"(?:[^"]|"")*"(?!")/,
    greedy: true
  },
  'reference': {
    // https://www.ablebits.com/office-addins-blog/2015/12/08/excel-reference-another-sheet-workbook/
    
    // Sales!B2
    // 'Winter sales'!B2
    // [Sales.xlsx]Jan!B2:B5
    // D:\Reports\[Sales.xlsx]Jan!B2:B5
    // '[Sales.xlsx]Jan sales'!B2:B5
    // 'D:\Reports\[Sales.xlsx]Jan sales'!B2:B5
    
    pattern: /(?:'[^']*'|(?:[^\s()[\]{}<>*?"';,$&]*\[[^^\s()[\]{}<>*?"']+\])?\w+)!/,
    greedy: true,
    alias: 'string',
    inside: {
      'operator': /!$/,
      'punctuation': /'/,
      'sheet': {
        pattern: /[^[\]]+$/,
        alias: 'function'
      },
      'file': {
        pattern: /\[[^[\]]+\]$/,
        inside: {
          'punctuation': /[[\]]/
        }
      },
      'path': /[\s\S]+/
    }
  },
  'function-name': {
    pattern: /[A-Z]\w*(?=\()/i,
    alias: 'keyword'
  },
  'range': {
    pattern: /\$?(?:[A-Z]+\$?\d+:\$?[A-Z]+\$?\d+|[A-Z]+:\$?[A-Z]+|\d+:\$?\d+)/i,
    alias: 'property',
    inside: {
      'operator': /:/,
      'cell': /\$?[A-Z]+\$?\d+/i,
      'column': /\$?[A-Z]+/i,
      'row': /\$?\d+/
    }
  },
  'cell': {
    // Excel is case insensitive, so the string "foo1" could be either a variable or a cell.
    // To combat this, we match cells case insensitive, if the contain at least one "$", and case sensitive otherwise.
    pattern: /[A-Z]+\d+|\$[A-Za-z]+\$?\d+|[A-Za-z]+\$\d+/,
    alias: 'property'
  },
  'number': /(?:\b\d+(?:\.\d+)?|\B\.\d+)(?:e[+-]?\d+)?\b/i,
  'boolean': /\b(?:TRUE|FALSE)\b/i,
  'operator': /[-+*/^%=&,]|<[=>]?|>=?/,
  'punctuation': /[[\]();{}|]/
};

Prism.languages['xlsx'] = Prism.languages['xls'] = Prism.languages['excel-formula'];
